#include <iostream>
#include <cpr/cpr.h>
#include <fstream>
#include <unordered_map>
#include <vector>
#include <algorithm>
#include <iomanip>
#include "nlohmann/json.hpp"
#include <spdlog/spdlog.h>

using json = nlohmann::json;

struct SkinPrice {
    double lis_price = 0.0;
    double market_price = 0.0;
    std::string name;
};

std::unordered_map<std::string, SkinPrice> skins_data;

void save_raw_data(const std::string& data, const std::string& filename) {
    std::ofstream file(filename);
    if (file) file << data;
}

std::string fetch_data(const std::string& url) {
    cpr::Response r = cpr::Get(cpr::Url{url}, cpr::Timeout{30000});
    if (r.status_code != 200) {
        spdlog::error("ошибка при запросе {}: статус {}", url, r.status_code);
    }
    return r.status_code == 200 ? r.text : "";
}

void process_lis_data(const json& data) {
    if (!data.is_object() || !data.contains("items") || !data["items"].is_array()) {
        spdlog::warn("неверная структура данных lis-skins");
        return;
    }

    size_t count = 0;
    for (auto& item : data["items"]) {
        try {
            if (!item.is_object()) continue;

            std::string name = item["name"].get<std::string>();
            double price = item["price"].get<double>();

            if (!name.empty() && price > 0) {
                skins_data[name].name = name;
                skins_data[name].lis_price = price;
                count++;
            }
        } catch (...) {
            continue;
        }
    }
    spdlog::info("обработано lis-skins предметов: {}", count);
}

void process_market_data(const json& data) {
    if (data.is_array()) {
        // Обработка формата массива
        size_t count = 0;
        for (auto& item : data) {
            try {
                if (!item.is_object()) continue;

                std::string name = item["market_hash_name"].get<std::string>();
                double price = std::stod(item["price"].get<std::string>());

                if (!name.empty() && price > 0) {
                    skins_data[name].name = name;
                    skins_data[name].market_price = price;
                    count++;
                }
            } catch (...) {
                continue;
            }
        }
        spdlog::info("обработано market-csgo предметов (массив): {}", count);
    }
    else if (data.is_object() && data.contains("items")) {
        // Обработка формата объекта с items
        size_t count = 0;
        for (auto& [key, item] : data["items"].items()) {
            try {
                if (!item.is_object()) continue;

                std::string name;
                double price = 0;

                // Разные варианты названий
                if (item.contains("market_hash_name")) {
                    name = item["market_hash_name"].get<std::string>();
                }
                else if (item.contains("name")) {
                    name = item["name"].get<std::string>();
                }

                // Разные варианты цен
                if (item.contains("price")) {
                    if (item["price"].is_string()) {
                        price = std::stod(item["price"].get<std::string>());
                    }
                    else if (item["price"].is_number()) {
                        price = item["price"].get<double>() / 100.0; // Конвертация из копеек
                    }
                }

                if (!name.empty() && price > 0) {
                    skins_data[name].name = name;
                    skins_data[name].market_price = price;
                    count++;
                }
            } catch (...) {
                continue;
            }
        }
        spdlog::info("обработано market-csgo предметов (объект): {}", count);
    }
    else {
        spdlog::info("неизвестный формат market-csgo данных");
        spdlog::debug("полученная структура:\n{}", data.dump(2));
    }
}

void print_profitable_skins(double min_profit_percent = 20.0) {
    std::vector<SkinPrice> profitable;
    
    for (const auto& [name, skin] : skins_data) {
        if (skin.lis_price > 0 && skin.market_price > 0) {
            double profit_percent = (skin.market_price - skin.lis_price) / skin.lis_price * 100;
            if (profit_percent >= min_profit_percent) {
                profitable.push_back(skin);
            }
        }
    }
    
    std::sort(profitable.begin(), profitable.end(),
        [](const SkinPrice& a, const SkinPrice& b) {
            return (b.market_price - b.lis_price) < (a.market_price - a.lis_price);
        });
    
    spdlog::info("найдено выгодных предметов: {}", profitable.size());
    std::cout << "==========================================\n";
    std::cout << std::left << std::setw(60) << "Название" 
              << std::setw(12) << "LIS цена" 
              << std::setw(12) << "Market цена" 
              << std::setw(12) << "Выгода" 
              << "Профит %\n";
    std::cout << "==========================================\n";
    
    for (const auto& skin : profitable) {
        double profit = skin.market_price - skin.lis_price;
        double profit_percent = profit / skin.lis_price * 100;
        
        std::cout << std::left << std::setw(60) << skin.name 
                  << std::fixed << std::setprecision(2)
                  << std::setw(12) << skin.lis_price 
                  << std::setw(12) << skin.market_price 
                  << std::setw(12) << profit
                  << std::setprecision(1) << profit_percent << "%\n";
    }
}

int main() {
    // 1. Загрузка LIS данных
    std::string lis_data = fetch_data("https://lis-skins.com/market_export_json/api_csgo_full.json");
    save_raw_data(lis_data, "lis_raw.json");
    
    if (!lis_data.empty()) {
        try {
            json lis_json = json::parse(lis_data);
            process_lis_data(lis_json);
        } catch (...) {
            spdlog::error("ошибка обработки lis-skins данных");
        }
    }
    
    // 2. Загрузка Market данных
    std::string market_data = fetch_data("https://market.csgo.com/api/v2/prices/USD.json");
    save_raw_data(market_data, "market_raw.json");
    
    if (!market_data.empty()) {
        try {
            json market_json = json::parse(market_data);
            process_market_data(market_json);
        } catch (...) {
            spdlog::error("ошибка обработки market-csgo данных");
        }
    }
    
    // 3. Вывод результатов
    print_profitable_skins();
    
    // 4. Диагностика совпадений
    spdlog::info("диагностика совпадений названий:");
    int examples = 0;
    for (const auto& [name, skin] : skins_data) {
        if (skin.lis_price > 0 && skin.market_price > 0) {
            spdlog::info("СОВПАДЕНИЕ: {}: lis-skins={} market-csgo={}", name, skin.lis_price, skin.market_price);
        }
        else if (skin.lis_price > 0) {
            spdlog::info("ТОЛЬКО lis-skins: {}: {} USD", name, skin.lis_price);
        }
        else if (skin.market_price > 0) {
            spdlog::info("ТОЛЬКО market-csgo: {}: {} USD", name, skin.market_price);
        }
        
        if (examples++ >= 10) break;
    }
    
    return 0;
}
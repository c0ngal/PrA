cmake_minimum_required(VERSION 3.10)
project(PriceAnalyzer)

set(CMAKE_CXX_STANDARD 17)

set(OPENSSL_ROOT_DIR "/opt/homebrew/opt/openssl@3")

# Настройка путей
include_directories(
    ${OPENSSL_ROOT_DIR}/include
    /Users/congal666/project-root/nlohmann_json/json/include
)

link_directories(${OPENSSL_ROOT_DIR}/lib)

include(FetchContent)

# Автоматическая загрузка CPR
FetchContent_Declare(
    cpr
    GIT_REPOSITORY https://github.com/libcpr/cpr.git
    GIT_TAG master
)

#spdlog
FetchContent_Declare (
    spdlog
    GIT_REPOSITORY https://github.com/gabime/spdlog
    GIT_TAG v1.15.3
)

FetchContent_MakeAvailable(cpr spdlog)

add_executable(PriceAnalyzer main.cpp)

# Линковка с использованием абсолютных путей
target_link_libraries(PriceAnalyzer PRIVATE
    cpr::cpr
    spdlog::spdlog
    "${OPENSSL_ROOT_DIR}/lib/libssl.dylib"
    "${OPENSSL_ROOT_DIR}/lib/libcrypto.dylib"
    "/opt/homebrew/opt/curl/lib/libcurl.dylib"
)
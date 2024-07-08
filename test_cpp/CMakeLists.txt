cmake_minimum_required(VERSION 3.10)
project(test_cpp)

# 设置C++ 17 标准
set(CMAKE_CXX_STANDARD 17)

# 添加源文件目录
include_directories(${CMAKE_SOURCE_DIR}/src)

# 添加可执行文件
add_executable(run src/hello_world.cpp)

# 执行方式：命令行输入 ./run

# Cmake Tutorial

## 1. 初识Cmake

1. **Cmake**是一个跨平台的开源工具，用于管理软件构建过程。它使用简单的配置文件（CMakeLists.txt）来生成标准构建文件（如 Unix 的 Makefile 或 Windows 的 Visual Studio 项目文件）。Cmake具有如下特点：

+ **跨平台支持**：CMake 可以在不同操作系统（如 Windows、macOS 和 Linux）上生成对应的构建文件（如 Makefile、Visual Studio 项目文件等）。

+ **编译器独立**：CMake 不依赖于特定的编译器，可以生成适用于多种编译器的构建文件。

+ **模块化和可扩展性**：CMake 支持通过模块和脚本扩展其功能。

+ **检测系统配置**：CMake 可以自动检测系统的配置和依赖库，使得构建过程更加智能和自动化。

+ **简化复杂项目的构建**：通过 CMake，可以方便地管理大型项目及其依赖关系。

2. CMake 使用 CMakeLists.txt 文件来描述项目的构建过程，每个目录可以有一个 CMakeLists.txt 文件，用于指定该目录中的构建规则。一个典型的CmakeLists.txt文件包含以下部分：CMake 最低版本要求、项目名称和版本、编译选项、源文件和目标、库文件和依赖关系、包含目录和库目录、安装规则、自定义命令和脚本等。

3. Make 是一种自动化构建工具，广泛用于 Unix 和 Linux 系统上，用于编译和构建程序。它根据 Makefile 文件中的指令，自动化执行编译、链接等任务。make具有以下特点：

+ **自动化构建**：Make 可以根据依赖关系自动化执行编译和链接过程，减少手动操作。

+ **高效构建**：Make 仅重新编译那些自上次构建以来发生变化的部分，显著提高构建效率。

+ **灵活性**：Makefile 文件允许定义复杂的构建规则和依赖关系，适用于多种编译和构建任务。

4. CmakeLists、Cmake、make、Makefile四者的关系如下所示：

![c204e759c8e08c1a38084932df6aaed](./../../Typora/image/c204e759c8e08c1a38084932df6aaed.jpg)

5. 下面是一个Cmake使用的简单示例：

	C++代码文件：

	```C++
	#include <iostream>
	
	using namespace std;
	
	int main()
	{
	
	    int a = 100;
	    int b = 1000;
	    int c = a + b;
	    char m = 'l';
	    string s ="hello ";
	
	    
	    cout << s << m << endl;
	    cout << c << endl;
	    cout <<"hello world!"<<endl;
	}
	```

	CMakeLists.txt文件：

	```shell
	# 设置cmake的最低版本，这里是不低于3.10，我们可以通过终端cmake --version查看本机的cmake版本
	cmake_minimum_required(VERSION 3.10)
	project(test_cpp 0.0.1)
	# 设置项目的名称和版本号（0.0.1），上面两行代码可以省略，但cmake会报一个警告，建议保留。
	
	set(CMAKE_CXX_STANDARD 17)           # 设置C++ 17 标准
	set(CMAKE_CXX_STANDARD_REQUIRED ON)  # C++ 17 是强制要求，不会衰退至低版本
	set(CMAKE_CXX_EXTENSIONS OFF)        # 禁止使用编译器特有扩展
	
	# 添加源文件目录
	include_directories(${CMAKE_SOURCE_DIR}/src)
	
	# 添加可执行文件run（任意取），源文件为src/hello_world.cpp
	add_executable(run src/hello_world.cpp)
	
	# 执行方式：命令行输入 ./run
	```

	 `set(CMAKE_CXX_EXTENSIONS OFF）`：是取消编译器的特有扩展，比如linux下的gcc编译器与windows下的msvc编译器有一些不同的特性，为了跨平台的需要，就将这个变量设置为OFF。

	文件编译过程：

	```shell
	#文件结构
	|———test_cpp
	|——————src
	|——————build
	|——————CMakeLists.txt
	
	|——————src
	|——————————hello_world.cpp
	
	# 命令行编译过程
	mkdir build
	cd build
	cmake ..
	make
	```

	创建一个build目录并进入是因为，在执行cmake的过程中，会产生许多中间文件。为了避免产生的中间文件污染我们的工作目录，就让CMake在build中执行。

	 执行`cmake ..`就是根据上层目录编写的CMakeLists.txt进行执行，生成Makefile文件，再执行`make`命令，自动编译代码，生成可执行文件run。

## 2. Cmake进阶

### 1. Cmake设置变量


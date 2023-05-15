# GCC Task

‌

## **mymath** Library:

The following code defines a library called _**mymath**_, which includes two simple math functions: _**add**_ and _**subtract**_. The main program uses these functions to add and subtract two numbers:

‌

```
// mymath.h
#ifndef MYMATH_H
#define MYMATH_H
namespace mymath{
int add(int a, int b);
int subtract(int a, int b);
}
#endif
```

‌

‌

```
// mymath.cpp
#include "mymath.h"
int mymath::add(int a, int b) {    return a + b;}
int mymath::subtract(int a, int b) {    return a - b;}
```



‌

## Task:


### Subtask 1:

‌

- Write a C++ program that uses the given code as a dynamic library
- Compile and link the program using GCC.
- Test the program to make sure it works as expected.

‌

### Subtask 2:

‌

- Write a C++ program that uses the given code as a static library
- Compile and link the program using GCC.
- Test the program to make sure it works as expected.

‌

### Subtask 3:

‌

- Use GCC optimization flags to improve the performance of the program.
- Measure the performance of the program using a timing or profiling tool, and compare the execution time or performance metrics with the unoptimized version.
- Use GCC to compile your program in debug and release mode and compare the performance difference in both modes.

‌

# CMake Tasks:

## Task 1

Perform the above gcc task using cmake.

## Task 2

Create a CMake project that uses a third-party library (using git submodule and CMake external project) e.g. Boost. The project should have a main executable that depends on the third-party library, which should be linked dynamically. You should need to create a CMakeLists.txt file that sets up the build system for the project, including compiling and linking the executable with the third-party library. You should also be able to handle any dependencies between the third-party libraries.

## Task 3 Bonus

Create a CMake project that builds and deploys a Docker container. The project should have a C++ executable that is compiled and packaged into a Docker container. The Docker container should include all the necessary dependencies for the executable to run. You should be able to use CMake to generate a Dockerfile, build the Docker container, and deploy the container to a Docker registry. You should also be able to create a CMakeLists.txt file that sets up the build system for the project, including any necessary commands to build the Docker container.
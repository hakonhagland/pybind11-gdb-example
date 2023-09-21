#include <pybind11/pybind11.h>
#include <iostream>

namespace py = pybind11;

void hello() {
    std::cout << "Hello, World!" << std::endl;
}

PYBIND11_MODULE(example, m) {
    m.def("hello", &hello);
}

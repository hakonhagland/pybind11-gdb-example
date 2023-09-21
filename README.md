# pybind11-gdb-example

- Install the Python module [pybind11](https://pypi.org/project/pybind11/) (`pip3 install pybind11`)
- Determine absolute path of the `python3` executable (needed for running gdb)
- The location can usually be found by running `which python3`
  but if you use `pyenv`, you will have to run `pyenv which python3` instead

### From the root directory of this repository (in the terminal window):
- Set enviroment variable `PYTHON3` to the location of the excutable, for example
  `export PYTHON3=/usr/bin/python3`
- Compile the python module `example` from the pybind11 C++ source file `example.cpp` by
  running `make compile`
- Run the python script `python3 t.py` through `gdb` with breakpoint at line 7 in `example.cpp`
  by running `make run-gdb`

.PHONY: compile run-gdb

#PYTHON3 := $(shell which python3)

compile:
	@echo "Compiling..."
	g++ -g -O0 -Wall -shared -fPIC \
    `python3 -m pybind11 --includes` example.cpp \
    -o example`python3-config --extension-suffix`
	@echo "Done."

run-gdb:
	@echo "Running gdb..."
	if [ -z $(PYTHON3) ]; then \
		echo "PYTHON3 environment variable not set."; \
		echo "Please set PYTHON3 to the absolute path of your python3 executable."; \
		echo "Example: export PYTHON3=/usr/bin/python3"; \
		echo "The location can usually be found by running 'which python3'"; \
		echo "but if you use pyenv, you will have to run 'pyenv which python3' instead"; \
		echo "Then rerun 'make run-gdb'"; \
		exit 1; \
	fi
	gdb -x gdbinit.gdb --args $(PYTHON3) t.py
	@echo "Done."
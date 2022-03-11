.DEFAULT_GOAL := run_app

SHELL := /usr/bin/env bash

export

# directory where python3 venv will live
directory = ./venv

# create venv if venv not present
python_bootstrap: | $(directory)
	source ./venv/bin/activate; \
	pip install -r pip-requirements.txt

$(directory):
	@echo "Folder $(directory) does not exist"
	virtualenv -p python3 $@

run_app: python_bootstrap
	./venv/bin/python main.py

.PHONY: run setup lint test build all

VENV=venv
PYTHON=$(VENV)/bin/python
PIP=$(VENV)/bin/pip

setup:
	python3 -m venv $(VENV)
	$(PIP) install -r requirements.txt

lint:
	$(VENV)/bin/flake8 app.py

test:
	$(VENV)/bin/pytest

build:
	$(PYTHON) -m compileall app.py

run:
	APP_NAME=LocalApp $(PYTHON) app.py

all: setup lint test build run

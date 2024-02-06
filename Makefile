SHELL := /bin/bash

SRC_DIR=src/
TEST_DIR=tests/
VENV=.venv
MAX_LINE_LEN=100

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@cat Makefile | grep "^[a-z]" | grep -v "grep" | grep -v "SHELL" | grep -v "help" | grep -v

format:
	autopep8 -vv --in-place --recursive --max-line-length $(MAX_LINE_LEN) --experimental --aggressive --exclude="${VENV}" $(SRC_DIR) $(TEST_DIR)
	autoflake --in-place --remove-all-unused-imports --exclude="${VENV}" -r $(SRC_DIR) $(TEST_DIR)
	isort --atomic --line-length $(MAX_LINE_LEN) $(SRC_DIR) $(TEST_DIR)
	black $(SRC_DIR)

lint:
	black --check --diff $(SRC_DIR)
	isort --check --diff --line-length $(MAX_LINE_LEN) $(SRC_DIR)
	pylint --recursive=y . --ignore="$(VENV)" --init-hook='import sys; sys.path.append("$(SRC_DIR)")'
	mypy --no-implicit-reexport  --implicit-reexport  --disallow-incomplete-defs --disallow-untyped-defs --disallow-untyped-decorators --pretty --ignore-missing-imports --no-namespace-packages $(SRC_DIR)

test:
	pytest -vv --cov=$(SRC_DIR). --cov=$(TEST_DIR). --cov-report term-missing  tests/
SHELL := /bin/bash

SRC_DIR=src/
TEST_DIR=tests/
VENV=.venv
MAX_LINE_LEN=100


ruff-check:
	ruff check --fix $(SRC_DIR) $(TEST_DIR)

ruff-format:
	ruff format $(SRC_DIR) $(TEST_DIR)

ruff: ruff-format ruff-check

test:
	pytest -vv --cov=$(SRC_DIR). --cov=$(TEST_DIR). --cov-report term-missing  tests/
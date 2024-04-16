SHELL := /bin/bash

SRC_DIR=src/
TEST_DIR=tests/
VENV=.venv
MAX_LINE_LEN=100


lint:
	ruff check --fix $(SRC_DIR) $(TEST_DIR)
	mdformat --check .

format:
	ruff format $(SRC_DIR) $(TEST_DIR)
	mdformat .

test:
	pytest -vv --cov=$(SRC_DIR). --cov=$(TEST_DIR). --cov-report term-missing  tests/
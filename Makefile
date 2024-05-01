SHELL := /bin/bash

SRC_DIR=src/
TEST_DIR=tests/
VENV=.venv
MAX_LINE_LEN=100

help:  ## Display all make targets
	@cat Makefile | grep -E '^[a-zA-Z0-9\/_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

lint:  ## Run linters to check code quality
	ruff check --fix $(SRC_DIR) $(TEST_DIR)
	mdformat --check .

format:  ## Format code and documentation
	ruff format $(SRC_DIR) $(TEST_DIR)
	mdformat .

test:  ## Run tests
	pytest -vv --cov=$(SRC_DIR). --cov=$(TEST_DIR). --cov-report term-missing  tests/
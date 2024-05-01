# Python Project

Let's see where this project goes.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Usage](#usage)
- [Repo Structure](#repo-structure)
- [Docs](#docs)
- [Author](#author)

## Prerequisites

- [Python v3.12.1](https://www.python.org/downloads/release/python-3121/)

## Setup

Create the Python virtual environment:

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
```

Install dependencies:

```bash
# Development
pip install -r requirements.txt -r dev-requirements.txt
```

```bash
# Production
pip install -r requirements.txt
```

## Usage

```text
python src/main.py -h                   
usage: main.py [-h]

Run the project.

optional arguments:
  -h, --help   show this help message and exit
```

## Repo Structure

- [src](src/): source code
- [tests](tests/): unit tests
- [Makefile](Makefile): project scripts (run `make help` for more info)

## Docs

- [CONTRIBUTING](CONTRIBUTING.md): Guidelines for contributing to the project.
- [LICENSE](LICENSE): The project's license.

## Author

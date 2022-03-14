#!/bin/bash
echo "Run Flake8"
./venv/bin/flake8 ./
echo "Run Black"
./venv/bin/black ./
echo "Run MyPy"
./venv/bin/mypy ./
echo "Run Bandit"
bandit --ini .bandit -r -x ./venv/lib/python3.8/site-packages .
echo "Run pytest"
./venv/bin/pytest tests
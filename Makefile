# Makefile for loopia-request-cert
# Streamlined development and usage automation

VENV := .venv
PYTHON := python3
REQS := requirements.txt

.PHONY: help venv install run lint test clean

## Default target
all: help

## Show available commands
help:
	@echo "\nAvailable targets:"
	@grep -E '^##' Makefile | sed -e 's/## //'

## Create Python virtual environment
venv:
	@echo "📦 Creating virtual environment in $(VENV)..."
	$(PYTHON) -m venv $(VENV)
	@echo "✅ Virtual environment ready. Activate it with:"
	@echo "   source $(VENV)/bin/activate"

## Install dependencies
install: venv
	@echo "📥 Installing dependencies..."
	$(VENV)/bin/pip install --upgrade pip
	$(VENV)/bin/pip install -r $(REQS)
	@echo "✅ Dependencies installed."

## Run the certificate request tool
run: install
	@echo "🚀 Running Loopia certificate request tool..."
	$./bin/request_cert.sh

## Clean up build artifacts and venv
clean:
	@echo "🧹 Cleaning up..."
	rm -rf $(VENV) __pycache__ .pytest_cache *.pyc
	@echo "✅ Project cleaned."

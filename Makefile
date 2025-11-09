# Makefile for Python virtual environment management

VENV := .venv
PYTHON := python3
REQS := requirements.txt

.PHONY: all venv install run clean

# Default target
all: venv

# Create virtual environment
venv:
	@echo "Creating virtual environment in $(VENV)..."
	$(PYTHON) -m venv $(VENV)
	@echo "✅ Virtual environment created."
	@echo "Activate it with: source $(VENV)/bin/activate"

# Install dependencies (after venv exists)
install: venv
	@echo "Installing dependencies..."
	$(VENV)/bin/pip install --upgrade pip
ifneq ("$(wildcard $(REQS))","")
	$(VENV)/bin/pip install -r $(REQS)
endif
	@echo "✅ Dependencies installed."

# Run your app
run: venv
	$(VENV)/bin/python main.py

# Remove virtual environment
clean:
	rm -rf $(VENV)
	@echo "🧹 Removed virtual environment."

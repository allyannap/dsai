#!/bin/bash

# dependencies.sh

# Installs all R and Python dependencies for this repository
# Run this script from the project root: bash setup/dependencies.sh

# --- SYSTEM DEPENDENCIES ---
# Python and R must be installed manually on Windows.
# Download Python: https://www.python.org/downloads/
# Download R: https://cran.r-project.org/bin/windows/base/
# (Recommended: Python 3.12, R 4.4.1)

# --- PYTHON DEPENDENCIES ---
# Ensure python is available
python --version || echo "⚠️ Python not found. Please install Python manually."


# --- PIP INSTALLATION (if missing) ---
# Use python -m pip so pip works even when Scripts is not on PATH (e.g. Windows user install)
if ! python -m pip --version &> /dev/null; then
  echo "⚠️ pip not found. Attempting to install pip..."
  curl -sS -O https://bootstrap.pypa.io/get-pip.py
  python get-pip.py
  rm -f get-pip.py
  python -m pip --version || echo "❌ pip installation failed. Please install pip manually: https://pip.pypa.io/en/stable/installation/"
else
  echo "✅ pip is already installed."
fi

# Ensure pip is available
python -m pip --version || echo "⚠️ pip not found. Please ensure pip is installed."

# Install Python packages
python -m pip install --upgrade pip
python -m pip install fastapi uvicorn pydantic pandas requests matplotlib shiny

# --- R DEPENDENCIES ---
# Ensure R is available
R --version || echo "⚠️ R not found. Please install R manually."

# Install R packages (run in R; single line avoids quote/newline issues in Git Bash)
R -q -e "install.packages(c('shiny', 'plumber', 'jsonlite', 'httr', 'httr2', 'dplyr', 'readr', 'googlesheets4', 'ollamar', 'future', 'parallel', 'stringr', 'ggplot2'), repos = c(CRAN = 'https://packagemanager.posit.co/cran/latest'))"

# --- DONE ---
echo "✅ All dependencies installation commands have been run. If you see errors above, please install Python and R manually first."


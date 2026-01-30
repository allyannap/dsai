#!/bin/bash
# Helper script to activate the Python virtual environment
# Usage: source activate_venv.sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$SCRIPT_DIR/.venv/bin/activate"
echo "✅ Virtual environment activated. Python: $(which python)"

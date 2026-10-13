#!/usr/bin/env bash
# Counts total number of files (not directories) inside a given directory, recursively.
# Usage: ./count-files.sh [directory]
# If no directory is given, defaults to the current directory.

set -euo pipefail

dir="${1:-.}"

if [ ! -d "$dir" ]; then
    echo "Error: '$dir' is not a valid directory." >&2
    exit 1
fi

count=$(find "$dir" -type f | wc -l)

echo "Total files in '$dir': $count"

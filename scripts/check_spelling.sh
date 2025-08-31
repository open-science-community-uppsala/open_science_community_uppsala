#!/bin/bash
#
# Check the spelling in the repository
#
# Usage:
#
#   ./scripts/check_spelling.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/check_spelling.sh"
    echo " "
    exit 42
fi

pyspelling -c .spellcheck.yml

echo "This script will give false errors for pages with multiple languages."
echo "In .spellcheck.yml, it failed to exclude those pages"
echo "Instead .github/workflow/check_spelling.yml. deletes these file"
echo "You are encouraged to suggest a solution :-)"

#!/bin/bash

if [ -f "./index.html" ]; then
    echo "Test Passed: index.html exists."
else
    echo "Test Failed: index.html is missing."
    exit 1
fi

if grep -q "Hello" ./index.html; then
    echo "Test Passed: HTML content is correct."
else
    echo "Test Failed: HTML content is incorrect."
    exit 1
fi

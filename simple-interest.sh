#!/bin/bash
# Simple Interest Calculator

echo "Enter Principal Amount: "
read principal
if ! [[ $principal =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter a valid number for Principal Amount."
    exit 1
fi

echo "Enter Rate of Interest (in %): "
read rate
if ! [[ $rate =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter a valid number for Rate of Interest."
    exit 1
fi

echo "Enter Time (in years): "
read time
if ! [[ $time =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter a valid number for Time."
    exit 1
fi

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
echo "The Simple Interest is: $simple_interest"

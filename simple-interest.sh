#!/bin/bash
echo "Enter Principal Amount: "
read principal
echo "Enter Rate of Interest (in %): "
read rate
echo "Enter Time (in years): "
read time
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
echo "The Simple Interest is: $simple_interest"

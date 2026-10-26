#!/bin/bash

echo "Enter the principal:"
read principal

echo "Enter the annual rate of interest:"
read rate

echo "Enter the time period in years:"
read time

interest=$(awk "BEGIN {print $principal * $rate * $time / 100}")

echo "Simple Interest = $interest"

# Simple Interest Calculator

A Bash command-line calculator for simple interest. Enter the principal, annual
interest rate (as a percentage), and time in years. Decimal values are
supported, and the result is displayed to two decimal places.

The formula is:

```text
simple interest = principal * annual rate * time / 100
```

## Run

```bash
bash simple-interest.sh
```

For example, a principal of `1000`, annual rate of `5`, and time of `2` years
produces `100.00` in simple interest. Inputs must be non-negative numbers.

This is a personal customization of the original IBM/Coursera educational
project. Original project attribution is retained in `simple-interest.sh`.
The input validation and decimal support were added by Rushikesh Dangat.

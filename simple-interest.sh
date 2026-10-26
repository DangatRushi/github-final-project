#!/usr/bin/env bash
# This script calculates simple interest given principal,
# annual rate of interest and time period in years.

# Do not use this in production. Sample purpose only.

# Original project author: Upkar Lidder (IBM)
# Original additional author: angelicagardner
# Personal customization: Rushikesh Dangat

read_number() {
  local prompt="$1"
  local value

  printf '%s' "$prompt" >&2
  if ! IFS= read -r value; then
    printf '\nError: input is required.\n' >&2
    return 1
  fi

  value=${value%$'\r'}
  if [[ ! $value =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    printf 'Error: enter a non-negative number (for example, 125 or 12.5).\n' >&2
    return 1
  fi

  printf '%s' "$value"
}

p=$(read_number "Enter the principal: ") || exit 1
r=$(read_number "Enter rate of interest per year (%): ") || exit 1
t=$(read_number "Enter time period in years: ") || exit 1

awk -v principal="$p" -v rate="$r" -v time="$t" \
  'BEGIN { printf "The simple interest is: %.2f\n", principal * rate * time / 100 }'

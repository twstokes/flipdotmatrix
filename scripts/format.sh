#!/bin/sh

set -e

if ! command -v clang-format &> /dev/null; then
  echo "clang-format not found."
  exit 1
fi

clang-format -i src/* tests/test/* tests/lib/TestFlipDotMatrix/*

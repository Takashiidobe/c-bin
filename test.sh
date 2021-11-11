#!/usr/bin/env bash

assert() {
  expected="$1"

  actual=$(exec ./hello)

  if [ "$actual" = "$expected" ]; then
    echo "$expected => $actual"
  else
    echo "$expected => $actual, but got $actual"
    exit 1
  fi
}

assert "Hello world\n"

echo "OK"

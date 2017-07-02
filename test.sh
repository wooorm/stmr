#!/bin/sh
#!/bin/bash

typeset -i tests=0

function describe {
  let tests+=1;
  description="$1";
}

function assert {
  if [[ "$1" == "$2" ]]; then
    printf "\033[32m.\033[0m"
  else
    printf "\033[31m\nFAIL: $description\033[0m: '$1' != '$2'\n";
    exit 1
  fi
}

describe "Execute"
  result=`./stmr --eval "alfred"` 2> /dev/null
  assert $result "alfr"

describe "Execute: short flag"
  result=`./stmr -e "alfred"` 2> /dev/null
  assert $result "alfr"

describe "Execute: no arguments"
  code=0
  ./stmr --eval 2> /dev/null || code=$?
  assert $code 1

describe "Execute: no arguments: short flag"
  code=0
  ./stmr -e 2> /dev/null || code=$?
  assert $code 1

describe "Help"
  code=0
  ./stmr --help > /dev/null 2>&1 || code=$?
  assert $code 0

describe "Help: short flag"
  code=0
  ./stmr -h > /dev/null 2>&1 || code=$?
  assert $code 0

describe "Version"
  code=0
  ./stmr --version > /dev/null 2>&1 || code=$?
  assert $code 0

describe "Version: short flag"
  code=0
  ./stmr -v > /dev/null 2>&1 || code=$?
  assert $code 0

printf "\033[32m\n(✓) Passed $tests assertions without errors\033[0m\n";

exit 0

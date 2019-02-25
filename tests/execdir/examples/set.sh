#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; execdir clear execdir_examples ) || exit
( set -x; execdir set execdir_examples /etc ) || exit
( set -x; execdir get execdir_examples)

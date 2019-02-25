#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; execdir clear execdir_examples ) || exit
( set -x; execdir add execdir_examples /etc /tmp ) || exit
( set -x; execdir get execdir_examples )

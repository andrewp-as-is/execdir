#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; execdir add execdir_examples /etc /usr ) || exit
( set -x; execdir get execdir_examples ) || exit

( set -x; execdir rm execdir_examples /etc ) || exit
( set -x; execdir get execdir_examples ) || exit

( set -x; execdir rm execdir_examples ) || exit
( set -x; execdir get execdir_examples ) || exit


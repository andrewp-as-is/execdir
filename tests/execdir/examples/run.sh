#!/usr/bin/env bash
{ set +x; } 2>/dev/null

( set -x; execdir run execdir_examples pwd )

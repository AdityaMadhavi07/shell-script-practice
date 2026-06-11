#!/bin/bash

set -euo pipefail
#set -u
#set -e
set -o pipefail

#n1=7
#echo "the number is $n2"

name=Alpha
echo "name: $name"

use=df -h |awk 'NR==2 print{$3}'
echo "$use"

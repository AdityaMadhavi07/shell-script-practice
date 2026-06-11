#!/bin/bash

# ✅ Function using local variables
use_local() {
    local var="I am local"
    echo "Inside use_local: $var"
}

# ✅ Function using global (regular) variables
use_global() {
    var="I am global"
    echo "Inside use_global: $var"
}

# ✅ Main section
echo "---- Using local variable ----"
use_local
echo "Outside after use_local: ${var:-undefined}"   # check if var exists

echo

echo "---- Using global variable ----"
use_global
echo "Outside after use_global: $var"

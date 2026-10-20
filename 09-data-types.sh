#!/bin/bash

var1=10
var2=20
var3=satya
echo "$var1+$var2"
echo "$((var1+var2))"
echo "$((var1+var2+var3))"

declare -i COUNT=9
COUNT=COUNT+1
echo "COUNT::$COUNT"    
#!/bin/bash

echo "Pass a path:"
read path
echo $path

defaultPath=/home/$(whoami)/Desktop

if [ -n "$path" ]; then
    export my_var=$path
else
    echo "Path is empty! Exporting default path ..."
    export my_var=$defaultPath
fi

echo "Exported path: $my_var"

file = "variables.txt"
for var in $(cat $file)

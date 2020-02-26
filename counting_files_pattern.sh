#!/bin/bash

# To find how many files with pattern across subdirectories (e.g. if we are looking for all *.tag files for example)

set -- **/*.txt
echo "$#"
# done


# TO FIND IN WHICH DIRECTORY THEY ARE
find . -name "*.tag"

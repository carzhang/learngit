#!/bin/sh

find `pwd` -name "*.h" -o -name "*.c" -o -name "*.xml" -o -name "*.cpp" -o -name "*.hpp" > cscope.files
cscope -Rbkq -i cscope.files
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q 

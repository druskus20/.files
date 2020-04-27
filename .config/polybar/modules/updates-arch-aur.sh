# !/bin/sh

updates=$(yay -Qu 2> /dev/null | wc -l)  || updates=0
( [ "$updates" -gt 0 ] && echo "$updates" ) || echo "" 

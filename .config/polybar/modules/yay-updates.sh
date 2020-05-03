# !/bin/sh

updates=$(sudo yaysync > /dev/null 2> /dev/null && yay -Qu 2> /dev/null | wc -l)  || updates=0
echo "$updates" 


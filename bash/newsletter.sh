#!/bin/bash
curDate=$(date +"%d%b%Y")
echo $curDate > davisFamily.txt
cat Shannon.txt TimII.txt Tim.txt >> davisFamily.txt
mail -s "Monthly Newsletter" PatriciaE.Knight@sbcglobal.net < davisFamily.txt 
mail -s "Monthly Newsletter" jdawgaz@gmail.com < davisFamily.txt
mv davisFamily.txt davisFamily$curDate.txt

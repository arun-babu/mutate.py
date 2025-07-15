#!/bin/sh

rmdir mutated_code
mkdir mutated_code 2>/dev/null

i=0
while [ $i -ne 100 ]
do
	python3 mutate.py test.c mutated_code/$i.c
	gcc mutated_code/$i.c 2>/dev/null

	if [ "$?" = "0" ]
	then
        	i=$(($i+1))
	fi
done

echo
echo "=====>" `ls -l mutated_code/ | wc -l` "mutants generated!"
echo

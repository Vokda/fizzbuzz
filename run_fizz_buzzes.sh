#!/bin/sh

echo "making all fizz buzzes"
make

echo "testing all fizz buzz programs"
for fizz_buzz in $(find bins/ -executable -type f -print)
do
	echo "-----$fizz_buzz-----"
	$fizz_buzz > bins/out
	diff -qy bins/out bins/facit && echo Success! || (echo Failure! ; diff -y bins/out bins/facit )
done

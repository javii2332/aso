#/bin/bash

for (( i=1; i<=5; i=i+1 )); do
	for ((x=1; x<=i; x++ )); do
	echo -n "$i"
done
	echo
done


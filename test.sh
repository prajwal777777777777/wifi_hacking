#!/bin/bash

address=""
first_list=("A" "C" "E" 2 4 6 8)
first_byte=$(($RANDOM % 10))${first_list[1+$RANDOM % ${#first_list[@]} ]}
if [[ $(echo "$first_byte" | wc -c) -eq 2 ]]
then
	first_byte=$first_byte"2"
fi
			for i in {1..5}
			do

				alphabet_arr=("A" "B" "C" "D" "E" "F")
				select_alpha=${alphabet_arr[1+$RANDOM % ${#alphabet_arr[@]} ]} 
			if [[ $(echo "$select_alpha" | wc -c ) -eq 1 ]]
			then
				select_alpha=$select_alpha$(($RANDOM % 10))
			fi
			address=$address:$(($RANDOM % 10))$select_alpha
			done
address=$first_byte$address
echo $address

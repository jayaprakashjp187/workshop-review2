ranArray=()

for (( i=0 ; i<=10 ; i++ ));
do
	ranArray[i]=$((RANDOM % 900 + 100 ))
	#echo ${ranArray[i]}
done

echo "Random Array = ${ranArray[@]}"


smallest=${ranArray[0]}
s_smallest=999

largest=0
s_largest=1

for n in ${ranArray[@]} ;
do
	if [[ $n -lt $smallest ]]; then
		s_smallest=$smallest
		smallest=$n

	elif [[ $n -lt $s_smallest && $n -ne $smallest ]]; then
	s_smallest=$n
	fi


	if [[ $n -gt $largest ]]; then
		s_largest=$largest
		largest=$n
	elif [[ $n -gt $s_largest && $n -ne $largest ]]; then
		s_largest=$n
	fi
done

echo "Smallest $smallest"
echo "2nd Smallest $s_smallest"

echo "Largest $largest"
echo "2nd Largest $s_largest"

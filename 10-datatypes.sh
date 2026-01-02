NUMBER1=150
NUMBER2=150

SUM=$(($NUMBER1+$NUMBER2))

echo "Sum of the above 2 numbers is :: ${SUM}"

leads=("Modi" "Putin" "Rahul" "Trump")

echo "Print all of the leaders at a time : ${leads[@]}" 
echo "Print all of the leaders at a time : ${leads[0]}"
echo "Print all of the leaders at a time : ${leads[1]}"
echo "Print all of the leaders at a time : ${leads[2]}"
echo "Print all of the leaders at a time : ${leads[3]}"
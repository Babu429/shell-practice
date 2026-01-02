NUMBER=$1

if [ $NUMBER -lt 10 ]; then
    echo "GIven number $NUMBER is less than 10"
elif [ $NUMBER -eq 10 ]; then 
    echo "Given Number $NUMBER is equals to 10"
else
    echo "GIven number $NUMBER is not less than 10"
fi
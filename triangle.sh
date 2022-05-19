#shell script to read 3 numbers and test whether they can be sides of a triangle

if [ $# -ne 3 ]
then 
	echo "syntax error"
	echo "< $0 p q r>"
	exit
fi

p=$1
q=$2
r=$3
if [ `expr $p + $q` -le $r -o `expr $p + $r` -le $q -o `expr $q + $r` -le $p ]
then
 	echo " $p $q $r THESE ARE NOT SIDES OF TRIANGLE "
	exit
fi
echo "$p $q $r THESE ARE THE SIDES OF TRIANGLE " 












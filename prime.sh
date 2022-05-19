#Shell script using command line to test whether given number is prime or not
if [ $# -ne 1 ] 
then 
echo "syntax error"
exit
fi
prime=$1
i=2
while [ $i -le `expr $prime / 2` ]
do
	if [ `expr $prime % $i` -eq 0 ]
	then
		echo "THE NUMBER $prime IS NOT A PRIME NUMBER "

		exit

	fi
i=`expr $i + 1`
done
echo "THE NUMBER $prime IS A PRIME NUMBER"

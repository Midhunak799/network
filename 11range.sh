
if [ $# -ne 3 ]
then
echo "SYNTAX ERROR"

echo "<*sh.filename lower limit upper limit>"

exit

fi

file=$1

a=$2
b=$3 

echo "lines between $a-$b is printed bellow"


cat $file | head -$b | tail -n +$a

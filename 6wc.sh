#shell script to count the number of words and lines in a file
if [ $# -ne 1 ]
then 
	echo "SYNTAX ERROR"
	echo "< $0 filename >"
	exit
fi

fnm=$1
ter=`tty`
exec < $fnm
i=0
j=0
while read line
do
	i=`expr $i + 1`

for c in $line 
do
	j=`expr $j + 1`

done

done
echo "$fnm"
echo "NUMBER OF LINES :$i"
echo "NUMBER OF WORDS :$j"
exec < $ter

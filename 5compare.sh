#5 Shell script to compare two files. If the files are identical delete one
echo "ENTER FILENAME 1:"
read f1
echo "ENTER FILENAME 2:"
read f2
cmp $f1 $f2
if [ $? -eq 0 ]
then
	rm $f2
	echo "SECOND FILE IS REMOVED"
	exit
fi
echo "FILES NOT IDENTICAL"



 

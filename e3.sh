sum=0;
while :
do
echo "enter one no"
read n1
echo "enter second no"
read n2
echo "1.addition"
echo "2.subtraction"
echo "3.multiplication"
echo "4.division"
echo "5.modulus"
echo "enter your choice"
read ch
case $ch in
	1) sum=`expr $n1 + $n2`
	   echo "sum= $sum";;
	2) sum=`expr $n1 - $n2`
	   echo "subtr= $sum";;
	3) sum=`expr $n1 \* $n2`
	   echo "mult= $sum";;
	4) if [ $n2 != 0 ]
	   then
		sum=`expr $n1 / $n2`
		echo "qout= $sum"
	   else
		echo "division error"
	   fi	;;
	5) sum=`expr $n1 % $n2`
	   echo "remainder= $sum";;
	*) echo "invalid choice";;
esac
done

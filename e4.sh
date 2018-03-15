#!/bin/sh
echo $#
if [ $# = 2 ];
then
	if [ -f $1 ];
	then 
		if grep -wq $2 $1
                then
			echo "username exists"
                else
			echo $2 >> $1
		fi
	else
		echo "file doesnot exist"
        fi
else
	echo "incorrect no of arguments"
fi
  

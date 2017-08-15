#!/bin/sh
while true 
do
	clear
	echo
	echo " ________________________________________________________________________________________________ "
	echo
tput cup 2 15  #光标坐标定位
time=`date +"%d%m%y"`
echo -ne " USER:$USERNAME\t\t HOST:$HOSTNAME\t\t DATE:$time "
tput cup 3
	echo " ________________________________________________________________________________________________ "

tput cup 5 20
echo -e "1:在终端上显示内容"
tput cup 6 20
echo -e "2:写入HTML文件"
tput cup 7 20
echo -e "3:退出"
tput cup 9

	echo " ________________________________________________________________________________________________ "
tput cup 10 20
echo "Please enter your choice[1,2,3]>"  
read AA

case $AA in

1)tput cup 11 20
	read txt
	clear
	echo $txt
	tput cup 11 20
echo "Anykey to continue"
read
;;

2)echo `ls`
echo "<html> <body>">>helloworld.html
read txt
echo $txt>>helloworld.html
echo "<body> <html>">>helloworld.html
tput cup 13 10
echo `ls`
tput cup 14 20
echo "Anykey to continue"
read
;;

3)exit 0
	;;
*) echo "please put in 1,2,3"
	;;
esac
done


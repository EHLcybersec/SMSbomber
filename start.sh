#!/bin/bash
clear
if [[ -s update.4nat ]];then
echo "All Requirements Found...."
echo -e "\e[1;32m Reborn \e[0m"
echo "Press Enter To Continue"
read a1
clear
python sms.py
clear
else
echo 'Installing Requirements....'
echo .
fi
echo "--------------------------------------------------"
echo "|              YOUTUBE.COM/HARUNMISTIK           |"
echo "|              INSTAGRAM.COM/ICHBINHARUN         |"
echo "-------------------------------------------------"
echo " 1. Termux"
echo " 2. Debian / Linux Or Other OS."
echo " 3. Ios"
echo ''
echo 'Choice >> '
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pkg install dos2unix
	pip3 install requests
	pip3 install colorama
        pip install pymysql
        pip install mysql-connector-python
        pip install passlib
	pip install 'prompt_toolkit==1.0.14'
	pip install SelectMenu
	cp ~/Reborn/sms.py /data/data/com.termux/files/usr/bin/Reborn
	dos2unix /data/data/com.termux/files/usr/bin/Reborn
	chmod 777 /data/data/com.termux/files/usr/bin/Reborn
	Reborn
	echo Made By 4NAT >update.4nat
	echo Requirements Installed....
	echo Press Enter To Continue...
	python3 sms.py
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "Please start with root (sudo sh ~/Reborn/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/Reborn/sms.py /usr/bin/Reborn
			dos2unix /usr/bin/Reborn
			chmod 777 /usr/bin/Reborn
			Reborn
			echo Made By 4NAT >update.4nat
			echo Requirements Installed....
			echo Press Enter To Continue...
			python3 sms.py
			pip install 'prompt_toolkit==1.0.14'
			pip install SelectMenu
			pip install pymysql
			pip install mysql-connector-python
			pip install passlib
			echo Made By 4NAT >update.4nat
			echo Requirements Installed....
			echo Press Enter To Continue...
		fi
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/Reborn/sms.py /usr/bin/Reborn
			dos2unix /usr/bin/Reborn
			chmod 777 /usr/bin/Reborn
			Reborn
			echo Made By 4NAT >update.4nat
			echo Requirements Installed....
			echo Press Enter To Continue...
			python3 sms.py
			pip install 'prompt_toolkit==1.0.14'
			pip install SelectMenu
		else
			echo "Error !!"
		fi
	fi
fi

#!/bin/bash
srvc=`netstat -tunlp |grep -i httpd |wc -l`
if [ $srvc -eq 1 ]
then
{
echo "httpd service is running fine."
} 
else 
{
echo "As of now service is not running but don't worry Wait for second. I am restarting."
sleep 3
service httpd restart
a=`echo $?`
if [ $a -eq 0 ]
then
{
echo "httpd service is running fine."
}
else
{
echo "There is some issue. might be package is not available. Please check manually."
read -p "do you want to install the packages for the httpd service. Y/N:-  "  b
if [ $b == Y ]
then
sh /usr/local/script/pack_install.sh
elif [ $b == N ]
then
echo "Thats all right. I quit."
break
else
echo "Please press either Y for yes or N for no."
fi 
}
fi
}
fi

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
}
fi
}
fi

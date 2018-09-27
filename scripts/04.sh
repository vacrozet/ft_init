#!/bin/bash
echo "0 0 * * * $(pwd)/04.sh" >> /etc/crontab

IFS= read -r line
md5='md5 /etc/crontab | awk '{print$1}''

$IFS < $md5
if [ $md5 == $line ]
    echo "File has not been modified"
else
    echo "$md5" | mail -s "Crontab was modified" root
fi

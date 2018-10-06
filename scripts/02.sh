#!/bin/bash

sudo echo "* 4 * * 1 sudo apt-get update && sudo apt-get upgrade -y >> /var/log/update_script.log" >> /etc/crontab

#!/bin/bash

yum install -y httpd
echo "hello prod vm" >/var/www/html/index.html
systemctl restart httpd

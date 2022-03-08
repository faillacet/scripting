#!/usr/bin/bash
yum update -y
yum install httpd -y
yum install git -y
mkdir /wcode
cd /wcode
git clone --branch main https://github.com/faillacet/scripting.git
cp /wcode/scripting/html/index.html /var/www/html/index.html
cd /var/www/html/
service httpd start
chkconfig httpd on

#!/usr/bin/bash
yum update -y
yum install httpd -y
yum install git -y
mkdir /test
cd /test
git clone --branch main https://github.com/faillacet/scripting.git
cp /test/scripting/html/index.html /var/www/html/index.html
cd /var/www/html/
old="DATE"
new=$(date +%Y-%m-%d)
sed -i 's/$old/$new/' index.html
service httpd start
chkconfig httpd on

#!/bin/bash

#  EC2AutomaticProvisioningScript.sh
#  Learned from acloudguru.
#  For linux distributions running on AWS EC2
#  Bash script used during EC2 provisioning that will do the following:
#  Install Apache
#  Updates for the OS such as security patches,
#  Copies the index.html file from an S3 bucket to the local apache folder (/var/www/html/)
#  Starts the apache service.
#  Sets the apache service to start automatically if EC2 instance is restarted.
#  Please make necessary changes to the script if you plan on using it yourself (such as changing the bucket information).
#  Use this file during the EC2 instance creation process us
#  Created by Blake Robertson on 3/20/16.

yum install httpd -y
yum update -y
aws s3 cp s3://gadget-foxwebsitebucket/index.html /var/www/html/
service httpd start
chkconfig httpd on



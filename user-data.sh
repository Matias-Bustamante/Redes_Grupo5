#!/bin/bash

# Create mount volume for logs
  sudo su - root
  mkfs.ext4 /dev/sdf
  mount -t ext4 /dev/sdf /var/log

# Install & Start nginx server
  yum search nginx 
  amazon-linux-extras install nginx1 -y
  systemctl start nginx
  systemctl enable nginx
  
# Print the hostname which includes instance details on nginx homepage  
  sudo mkdir /usr/share/nginx/html/img
  sudo wget -P /usr/share/nginx/html/img https://github.com/facundoalarcon/computernetworks/raw/main/webfiles/img/This-is-the-way-Mandalorian.jpeg
  export HOSTNAME=$(hostname -f)
  sudo echo '<!DOCTYPE html><html>\
  <body><img src="img/This-is-the-way-Mandalorian.jpeg" alt=vThis is the way"></body>\
  <script type="text/javascript">console.log("Hello from '$HOSTNAME'");</script></html>'\
  > /usr/share/nginx/html/index.html
  
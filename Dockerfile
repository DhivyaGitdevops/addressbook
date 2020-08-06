mkdir -m 777 address
cd newdock
cp /var/lib/jenkins/workspace/pipe/target/addressbook.war .
touch dockerfile
cat <<EOT>> dockerfile
From centos:latest
Maintainer "testfile"
Run yum update -y
Run yum install wget -y
Run wget https://downloads.apache.org/tomcat/tomcat-10/v10.0.0-M7/bin/apache-tomcat-10.0.0-M7.tar.gz
Run tar -xvzf apache-tomcat-10.0.0-M7.tar.gz
Run cd apache-tomcat-10.0.0-M7
run cd bin/
CMD catalina.sh
expose 8080
EOT
sudo docker build -t newcent:newcent .
sudo docker run -itd --name newcon newcent:newcent /bin/bash

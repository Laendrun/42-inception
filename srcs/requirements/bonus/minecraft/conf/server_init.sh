#! /bin/bash


cd /var/data/server
echo "eula=true" > eula.txt
/usr/bin/java -Xms1G -Xmx2G -jar /var/data/server/server.jar nogui
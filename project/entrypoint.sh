#!/bin/bash
DB_DIALECT="MYSQL"
DB_URL="jdbc:mysql://mysql_db:3306/lavagna?useUnicode=true&characterEncoding=utf-8&useSSL=false"
DB_USER="root"
DB_PASS=""
SPRING_PROFILE="dev"
# Execute the web archive
java -Xms64m -Xmx128m -Ddatasource.dialect="${DB_DIALECT}" \
-Ddatasource.url="${DB_URL}" \
-Ddatasource.username="${DB_USER}" \
-Ddatasource.password="${DB_PASS}" \
-Dspring.profiles.active="${SPRING_PROFILE}" \
-jar ./lavagna-jetty-console.war --headless
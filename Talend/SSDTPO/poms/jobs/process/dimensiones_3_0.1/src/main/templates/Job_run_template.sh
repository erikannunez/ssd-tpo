#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Xms256M -Xmx1024M -Dfile.encoding=UTF-8 -cp .:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/advancedPersistentLookupLib-1.2.jar:$ROOT_PATH/../lib/bcprov-jdk15on-1.51.jar:$ROOT_PATH/../lib/commons-collections-3.2.2.jar:$ROOT_PATH/../lib/commons-lang-2.6.jar:$ROOT_PATH/../lib/commons-logging-1.1.3.jar:$ROOT_PATH/../lib/dom4j-1.6.1.jar:$ROOT_PATH/../lib/hsqldb.jar:$ROOT_PATH/../lib/jackcess-2.1.0.jar:$ROOT_PATH/../lib/jackcess-encrypt-2.1.0.jar:$ROOT_PATH/../lib/jboss-serialization.jar:$ROOT_PATH/../lib/log4j-1.2.15.jar:$ROOT_PATH/../lib/log4j-1.2.16.jar:$ROOT_PATH/../lib/mariadb-java-client-2.2.1.jar:$ROOT_PATH/../lib/talend-ucanaccess-utils-1.0.0.jar:$ROOT_PATH/../lib/trove.jar:$ROOT_PATH/../lib/ucanaccess-2.0.9.5.jar:$ROOT_PATH/dimensiones_3_0_1.jar: ssdtpo.dimensiones_3_0_1.Dimensiones_3  "$@" 
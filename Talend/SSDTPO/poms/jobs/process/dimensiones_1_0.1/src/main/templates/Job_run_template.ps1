$fileDir = Split-Path -Parent $MyInvocation.MyCommand.Path
cd $fileDir
java '-Xms256M' '-Xmx1024M' '-Dfile.encoding=UTF-8' -cp '.;../lib/routines.jar;../lib/advancedPersistentLookupLib-1.2.jar;../lib/bcprov-jdk15on-1.51.jar;../lib/commons-collections-3.2.2.jar;../lib/commons-lang-2.6.jar;../lib/commons-logging-1.1.3.jar;../lib/dom4j-1.6.1.jar;../lib/hsqldb.jar;../lib/jackcess-2.1.0.jar;../lib/jackcess-encrypt-2.1.0.jar;../lib/jboss-serialization.jar;../lib/log4j-1.2.15.jar;../lib/log4j-1.2.16.jar;../lib/mariadb-java-client-2.2.1.jar;../lib/talend-ucanaccess-utils-1.0.0.jar;../lib/trove.jar;../lib/ucanaccess-2.0.9.5.jar;dimensiones_1_0_1.jar;' ssdtpo.dimensiones_1_0_1.Dimensiones_1  %* 
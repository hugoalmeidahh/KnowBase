#!/bin/bash 
echo "JDK INSTALLER"
echo "hhalmeida3@gmail.com"
if [ $1 -eq "" ]
then 
echo "Informe o arquivo JDK"
exit
fi

if [ "$EUID" -ne 0 ]
  then echo "Please run as root | Por favor use modo root"
  exit
fi

if [ -e $1 ]; then 
mkdir tmp_jdk
mkdir /usr/local/java
cp $1 tmp_jdk
cd tmp_jdk 
tar xvf $1
jdkdir=`ls -l |grep drwx | awk -F" " '{print $9}'`
mv $jdkdir /usr/local/java
jdkhome="/usr/local/java/"$jdkdir
jrehome="/usr/local/java/"$jdkdir"/jre"
PATH=$PATH:$jrehome/bin:$jdkhome/bin
printf '%s\n %s\n %s\n %s\n %s\n %s\n' 'JAVA_HOME='$jdkhome 'JRE_HOME='$jrehome 'PATH='$PATH 'export JAVA_HOME' 'export JRE_HOME' 'export PATH' >> /etc/profile 
update-alternatives --install "/usr/bin/java" "java" $jdkhome"/bin/java" 1
update-alternatives --install "/usr/bin/javac" "javac" $jdkhome"/bin/javac" 1
update-alternatives --install "/usr/bin/javaws" "javaws" $jdkhome"/bin/javaws" 1
update-alternatives --install "/usr/bin/jshell" "jshell" "/usr/local/java/jdk-10/bin/jshell" 1
update-alternatives --set java $jdkhome/bin/java
update-alternatives --set javac $jdkhome/bin/javac
update-alternatives --set javaws $jdkhome/bin/javaws
update-alternatives --set jshell $jdkhome/bin/jshell
source /etc/profile
java -version
fi

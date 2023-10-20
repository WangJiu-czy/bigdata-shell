proxy="https://ghps.cc/"
source /etc/profile 
source ~/.bashrc
echo "==============================加载环境变量======================================="
Link=$proxy"https://raw.githubusercontent.com/WangJiu-czy/bigdata-shell/main/init/xsync"

wget -q -t 3  -P $HADOOP_HOME/bin $Link -O $HADOOP_HOME/bin/xsync  --no-check-certificate
chmod +x $HADOOP_HOME/bin/xsync

JPS=$proxy"https://raw.githubusercontent.com/WangJiu-czy/WangJiu-czy/main/init/conf/jpsall" 
wget -q -t 3  -P $HADOOP_HOME/bin $JPS -O $HADOOP_HOME/bin/jpsall  --no-check-certificate
chmod +x $HADOOP_HOME/bin/jpsall


MyHadoop=$proxy"https://raw.githubusercontent.com/WangJiu-czy/bigdata-shell/main/init/myhadoop.sh" 
wget -q -t 3  -P $HADOOP_HOME/bin $MyHadoop -O $HADOOP_HOME/bin/myhadoop.sh  --no-check-certificate
chmod +x $HADOOP_HOME/bin/myhadoop.sh
printf "\n"
echo "===============================加载ok=============================================="

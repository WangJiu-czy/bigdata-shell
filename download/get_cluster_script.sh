
source /etc/profile 
source ~/.bashrc

Link="https://ghproxy.com/https://raw.githubusercontent.com/WangJiu-czy/bigdata-shell/main/init/xsync"

wget -q -P $HADOOP_HOME/bin $Link -O $HADOOP_HOME/bin/xsync --no-check-certificate
chmod +x $HADOOP_HOME/bin/xsync

JPS="https://ghproxy.com/https://raw.githubusercontent.com/WangJiu-czy/WangJiu-czy/main/init/conf/jpsall" 
wget -q -P $HADOOP_HOME/bin $JPS -O $HADOOP_HOME/bin/jpsall --no-check-certificate
chmod +x $HADOOP_HOME/bin/jpsall


MyHadoop="https://ghproxy.com/https://raw.githubusercontent.com/WangJiu-czy/bigdata-shell/main/init/myhadoop.sh" 
wget -q -P $HADOOP_HOME/bin $MyHadoop -O $HADOOP_HOME/bin/myhadoop.sh --no-check-certificate
chmod +x $HADOOP_HOME/bin/myhadoop.sh
printf "\n"
echo "==============================ok=============================================="

#!/bin/bash
if [ $# -lt 1 ]
then
    echo "=============== 请输入 start 或者 stop ====================="
    exit ;
fi
case $1 in
"start")
        echo " =================== 启动 hadoop集群 ==================="
        printf "\n"
        echo " --------------- 启动 hdfs ---------------"
        ssh hadoop102 "source /etc/profile && start-dfs.sh"
        printf "\n"
        echo " --------------- 启动 yarn ---------------"
        ssh hadoop103 "source /etc/profile && start-yarn.sh"
        printf "\n"
        echo " --------------- 启动 historyserver ---------------"
        ssh hadoop102 "source /etc/profile && mapred --daemon start historyserver"
;;
"stop")
        echo " =================== 关闭 hadoop集群 ==================="

        echo " --------------- 关闭 historyserver ---------------"
        printf "\n"
        ssh hadoop102 "source /etc/profile && mapred --daemon stop historyserver"
        printf "\n"
        echo " --------------- 关闭 yarn ---------------"
        ssh hadoop103 "source /etc/profile && stop-yarn.sh"
        printf "\n"
        echo " --------------- 关闭 hdfs ---------------"
        ssh hadoop102 "source /etc/profile && stop-dfs.sh"
;;
*)
    echo "=============== 请输入 start 或者 stop ====================="
;;
esac


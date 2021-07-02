#!/bin/sh
# 破解3T-Studio時間限制 https://www.cnblogs.com/dzqdzq/p/11261419.html

rm -f ~/Library/Preferences/3t.*
rm -rf ~/.3T
rm -rf ~/.cache/ftuwWNWoJl-STeZhVGHKkQ--
 
ftPath=`find /var/folders -name "ftuwWNWoJl-STeZhVGHKkQ--" -print 2>&1 | fgrep -v "Permission denied" | fgrep -v "Operation not permitted"`
t3Path=`dirname ${ftPath}`/t3
 
if [ -e ${ftPath} ];then
    rm -rf ${ftPath}
fi
 
if [ -e ${t3Path} ];then
    rm -rf ${t3Path}
fi
 
echo "删除档案成功，请立即重启电脑生效"
echo "如果不想立刻重启，那么请在重启电脑前，都不要重新执行studio3T, 否则执行指令码将不起作用"

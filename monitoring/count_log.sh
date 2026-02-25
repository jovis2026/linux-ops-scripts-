#! /bin/bash
dir="$1"
if [ -z "$dir" ];then
	echo "请输入目录"
	exit
fi
if [ ! -d "$dir" ];then
	echo "目录不存在"
	exit
fi
file_count=0
error_count=0
for i in "$dir"/*.log;do
	if [ -f "i" ];then
		((file_count))
		line_count=$( grep "ERROR" "i" | wc -l )
		((error_count += line_count))
	fi
done
echo "log文件数量为：$file_count"
echo "ERROR总行数为：$error_count"

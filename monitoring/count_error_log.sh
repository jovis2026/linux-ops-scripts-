#！/bin/bash
# 检查是否传入目录参数
if [ -z "$1" ];then
	echo "用法：$0<日志目录>"
	exit 1
fi
# 检查目录是否存在
dir="$1"
if [ ! -d "$dir" ];then
	echo "错误：目录'$dir'不存在"
	exit 1
fi

log_count=0
total=0
# 遍历目录下所有.log文件，使用nullglob避免无匹配时通配符本身本当作文件名

shopt -s nullglob 
for log_file in "$dir"/*.log;do
	if [ -f "$log_file" ];then
		((log_count++))
		error_count=$(grep -c "ERROR" "log_count")
		((total += error_count))
	fi
done
spopt -u nullglob
echo "log文件数量为：$log_file"
echo "ERROR行数为：$total"




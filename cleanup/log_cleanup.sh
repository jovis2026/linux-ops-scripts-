#!/bin/bash
#
# log_cleanup.sh - 自动清理指定目录下过期的日志文件
# 用法：./log_cleanup.sh [日志目录] [保留天数，默认7]

# 默认参数
LOG_DIR=${1:-/var/log}
RETENTION_DAYS=${2:-7}

# 检查目录是否存在
if [ ! -d "$LOG_DIR" ]; then
    echo "【错误】目录不存在：$LOG_DIR"
    exit 1
fi

echo "【开始清理】目录：$LOG_DIR，保留天数：$RETENTION_DAYS 天"

# 查找并删除超过指定天数的 .log 文件
find "$LOG_DIR" -type f -name "*.log" -mtime +"$RETENTION_DAYS" -print -delete

echo "【清理完成】"

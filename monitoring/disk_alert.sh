#!/bin/bash
#
# disk_alert.sh - 监控磁盘空间，超过阈值时输出告警
# 用法：./disk_alert.sh [阈值百分比，默认80]

THRESHOLD=${1:-80}

# 遍历所有本地磁盘分区（排除tmpfs等）
df -h | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{print $5 " " $6}' | while read -r usage mount; do
    # 去掉百分号，转为数字
    usage_pct=${usage%\%}

    if [ "$usage_pct" -ge "$THRESHOLD" ]; then
        echo "【告警】磁盘空间不足！挂载点: $mount, 当前使用率: $usage_pct% (阈值: $THRESHOLD%)"
    fi
done

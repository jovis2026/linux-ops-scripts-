# Linux 运维脚本集合
个人学习与实战使用的 Linux 自动化运维脚本仓库，持续更新中～

## 📌 仓库介绍
本仓库用于存放日常练习、服务器监控、自动化脚本、日志清理、系统维护等常用 Shell 脚本，
适合 Linux 运维初学者学习与实战使用，也可直接用于生产环境简化操作。

GitHub 地址：https://github.com/jovis2026/linux-ops-scripts-

## 📂 目录结构
linux-ops-scripts-/
├── monitoring/       # 服务器监控脚本（磁盘、CPU、内存等）
├── cleanup/          # 日志与垃圾文件清理脚本
├── backup/           # 数据备份脚本
└── README.md         # 项目说明

## 📝 已包含脚本
### disk_alert.sh
磁盘空间使用率监控告警脚本
- 功能：自动检测磁盘使用率，超过阈值输出告警
- 默认阈值：80%
- 使用：./disk_alert.sh 或 ./disk_alert.sh 90

## 🚀 使用方法
1. 克隆仓库到本地
git clone https://github.com/jovis2026/linux-ops-scripts-.git

2. 进入目录
cd linux-ops-scripts-

3. 给脚本添加执行权限
chmod +x 脚本名.sh

4. 运行脚本
./脚本名.sh

## 📢 说明
- 所有脚本均为学习使用，可自由修改、使用、分享
- 持续更新更多实用运维脚本
- 适合简历项目展示、面试作品展示
## 📝 已包含脚本

### monitoring/disk_alert.sh
磁盘空间使用率监控告警脚本
- 功能：自动检测磁盘使用率，超过阈值输出告警
- 默认阈值：80%
- 使用：./monitoring/disk_alert.sh 或 ./monitoring/disk_alert.sh 90

### cleanup/log_cleanup.sh
自动清理指定目录下过期的日志文件
- 功能：删除指定目录下超过指定天数的 .log 文件
- 默认目录：/var/log，默认保留天数：7天
- 使用：./cleanup/log_cleanup.sh 或 ./cleanup/log_cleanup.sh /home/ops/logs 30

## ✉️ 联系方式
邮箱：1415786768@qq.com
GitHub：jovis2026

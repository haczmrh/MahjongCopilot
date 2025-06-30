#!/bin/bash

# 进入脚本所在的目录
cd "$(dirname "$0")"

# 激活虚拟环境
source venv/bin/activate

# 设置Playwright路径 (为保险起见加上)
export PLAYWRIGHT_BROWSERS_PATH=0

# 运行主程序
python3.10 main.py
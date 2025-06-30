@echo off
REM 进入脚本所在目录
cd /d %~dp0

REM 激活虚拟环境
call venv\Scripts\activate

REM 设置Playwright路径
set PLAYWRIGHT_BROWSERS_PATH=0

REM 运行主程序
python main.py

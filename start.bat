@echo off
REM 进入脚本所在目录
cd /d %~dp0

REM 检查管理员权限并提权
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)

REM 激活虚拟环境
call venv\Scripts\activate

REM 设置Playwright路径
set PLAYWRIGHT_BROWSERS_PATH=0

REM 运行主程序
python main.py

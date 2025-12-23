@echo off
chcp 65001 >nul
title 魔法圣诞树 - Python 服务器
color 0B
echo ====================================
echo   魔法圣诞树 - Python 服务器启动
echo ====================================
echo.
echo 正在检查 Python 环境...
echo.

REM 检查是否安装了 Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [错误] 未检测到 Python！
    echo.
    echo 请先安装 Python：
    echo 1. 访问 https://www.python.org/downloads/
    echo 2. 下载并安装最新版本
    echo 3. 安装时务必勾选 "Add Python to PATH"（重要！）
    echo 4. 安装完成后，重新运行此脚本
    echo.
    echo 或者，如果已安装 Node.js，可以运行 "启动服务器.bat"
    echo.
    echo 按任意键打开 Python 下载页面...
    pause >nul
    start https://www.python.org/downloads/
    exit /b 1
)

REM 检查文件是否存在
if not exist "ai_studio_code.html" (
    echo [错误] 找不到 ai_studio_code.html 文件！
    echo.
    echo 请确保此脚本和 HTML 文件在同一文件夹中
    echo.
    pause
    exit /b 1
)

echo [成功] 检测到 Python
echo [信息] 正在启动服务器...
echo.
echo ====================================
echo 服务器地址：http://127.0.0.1:8000/ai_studio_code.html
echo ====================================
echo.
echo 提示：
echo - 请手动在浏览器中访问上面的地址
echo - 按 Ctrl+C 可以停止服务器
echo - 关闭此窗口也会停止服务器
echo.
echo ====================================
echo.

REM 启动 Python HTTP 服务器
python -m http.server 8000

echo.
echo 服务器已停止
pause


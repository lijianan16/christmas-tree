@echo off
chcp 65001 >nul
title 魔法圣诞树 - 服务器
color 0A
echo ====================================
echo   魔法圣诞树 - 自动启动服务器
echo ====================================
echo.
echo 正在检查环境...
echo.

REM 检查是否安装了 Node.js
where node >nul 2>&1
if %errorlevel% neq 0 (
    echo [错误] 未检测到 Node.js！
    echo.
    echo 请先安装 Node.js：
    echo 1. 访问 https://nodejs.org/
    echo 2. 下载并安装 LTS 版本（推荐）
    echo 3. 安装时保持默认设置即可
    echo 4. 安装完成后，重新运行此脚本
    echo.
    echo 或者，如果已安装 Python，可以运行 "启动服务器_Python.bat"
    echo.
    echo 按任意键打开 Node.js 下载页面...
    pause >nul
    start https://nodejs.org/
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

echo [成功] 检测到 Node.js
echo [信息] 正在启动服务器...
echo.
echo ====================================
echo 服务器地址：http://127.0.0.1:8080/ai_studio_code.html
echo ====================================
echo.
echo 提示：
echo - 浏览器会自动打开页面
echo - 如果没有自动打开，请手动访问上面的地址
echo - 按 Ctrl+C 可以停止服务器
echo - 关闭此窗口也会停止服务器
echo.
echo ====================================
echo.

REM 启动 http-server
npx --yes http-server -p 8080 -o ai_studio_code.html

echo.
echo 服务器已停止
pause


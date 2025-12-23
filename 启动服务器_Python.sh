#!/bin/bash

echo "===================================="
echo "  魔法圣诞树 - Python 服务器启动"
echo "===================================="
echo ""
echo "正在启动本地服务器..."
echo ""

# 检查是否安装了 Python
if ! command -v python3 &> /dev/null && ! command -v python &> /dev/null; then
    echo "[错误] 未检测到 Python！"
    echo ""
    echo "请先安装 Python："
    echo "1. 访问 https://www.python.org/downloads/"
    echo "2. 下载并安装最新版本"
    echo "3. 重新运行此脚本"
    echo ""
    read -p "按回车键退出..."
    exit 1
fi

# 使用 python3 或 python
PYTHON_CMD="python3"
if ! command -v python3 &> /dev/null; then
    PYTHON_CMD="python"
fi

echo "[信息] 检测到 Python，正在启动服务器..."
echo ""
echo "服务器地址：http://127.0.0.1:8000/ai_studio_code.html"
echo ""
echo "按 Ctrl+C 可以停止服务器"
echo "===================================="
echo ""

# 启动 Python HTTP 服务器
$PYTHON_CMD -m http.server 8000


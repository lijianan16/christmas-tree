#!/bin/bash

echo "===================================="
echo "  魔法圣诞树 - 自动启动服务器"
echo "===================================="
echo ""
echo "正在启动本地服务器..."
echo ""

# 检查是否安装了 Node.js
if ! command -v node &> /dev/null; then
    echo "[错误] 未检测到 Node.js！"
    echo ""
    echo "请先安装 Node.js："
    echo "1. 访问 https://nodejs.org/"
    echo "2. 下载并安装 LTS 版本"
    echo "3. 重新运行此脚本"
    echo ""
    read -p "按回车键退出..."
    exit 1
fi

echo "[信息] 检测到 Node.js，正在启动服务器..."
echo ""
echo "服务器启动后，浏览器会自动打开页面"
echo "如果没有自动打开，请手动访问：http://127.0.0.1:8080/ai_studio_code.html"
echo ""
echo "按 Ctrl+C 可以停止服务器"
echo "===================================="
echo ""

# 启动 http-server
npx --yes http-server -p 8080 -o ai_studio_code.html


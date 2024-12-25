#!/bin/bash

# 定义矿工软件下载地址
MINER_URL="https://github.com/Project-InitVerse/ini-miner/releases/download/v1.0.0/iniminer-linux-x64"
MINER_EXEC="iniminer-linux-x64"

# 显示菜单的函数
show_menu() {
    echo "\n===================="
    echo "   INI 矿工菜单"
    echo "===================="
    echo "1. 下载矿工软件"
    echo "2. 配置并开始挖矿"
    echo "3. 退出"
    echo "===================="
}

# 下载矿工软件的函数
download_miner() {
    echo "正在下载矿工软件..."
    wget -O $MINER_EXEC $MINER_URL
    chmod +x $MINER_EXEC
    echo "矿工软件已下载并设置为可执行。"
}

# 配置并开始挖矿的函数
start_mining() {
    read -p "请输入您的钱包地址: " WALLET_ADDRESS
    read -p "请输入矿工名称 (默认: Worker001): " WORKER_NAME
    WORKER_NAME=${WORKER_NAME:-Worker001}
    read -p "请输入使用的 CPU 核心数 (例如 1 表示使用一个核心): " CPU_CORES

    echo "使用钱包地址: $WALLET_ADDRESS，矿工名称: $WORKER_NAME，CPU 核心数: $CPU_CORES 开始挖矿..."
    ./$MINER_EXEC --pool stratum+tcp://$WALLET_ADDRESS.$WORKER_NAME@pool-core-testnet.inichain.com:32672 --cpu-devices $CPU_CORES
}

# 主程序循环
while true; do
    show_menu
    read -p "请选择一个选项: " CHOICE
    case $CHOICE in
        1)
            download_miner
            ;;
        2)
            start_mining
            ;;
        3)
            echo "退出中..."
            exit 0
            ;;
        *)
            echo "无效选项，请重试。"
            ;;
    esac
done

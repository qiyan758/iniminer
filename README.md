# INI Miner 一键脚本

该脚本旨在为用户简化在 Linux 系统上配置并运行 INI Miner 的流程，通过菜单交互完成下载、配置和挖矿操作。

## 功能
1. 自动下载矿工软件。
2. 轻松配置钱包地址、矿工名称及 CPU 核心数。
3. 启动挖矿。

---

## 使用说明

### 1. 克隆仓库
执行以下命令克隆仓库：  
`git clone https://github.com/qiyan758/iniminer.git`  
然后，进入仓库目录：  
`cd iniminer`

### 2. 给脚本赋予可执行权限
执行以下命令赋予脚本可执行权限：  
`chmod +x miner_script.sh`

### 3. 运行脚本
执行以下命令运行脚本：  
`./miner_script.sh`

---

## 菜单功能

1. **下载矿工软件**  
   自动从官方 GitHub 仓库下载 `iniminer-linux-x64` 并设置为可执行。

2. **配置并开始挖矿**  
   - 输入您的钱包地址（替换教程中的默认值）。  
   - 自定义矿工名称（默认为 `Worker001`）。  
   - 指定 CPU 核心数以优化挖矿性能。  

3. **退出**  
   退出脚本运行。

---

## 示例

启动挖矿时输入：
- 钱包地址：`0xYourWalletAddress`
- 矿工名称：`MyWorker`
- 使用核心数：2

启动后，您将看到如下挖矿界面：

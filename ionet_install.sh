#!/bin/bash
sudo apt-mark hold linux-image-generic linux-headers-generic
# 下载安装脚本
echo "下载 Ionet 安装脚本..."
curl -L https://github.com/ionet-official/io-net-official-setup-script/raw/main/ionet-setup.sh -o ionet-setup.sh

# 添加执行权限并运行
echo "安装 Ionet..."
chmod +x ionet-setup.sh
./ionet-setup.sh

# 下载执行二进制文件
echo "下载 Ionet 启动二进制文件..."
curl -L https://github.com/ionet-official/io_launch_binaries/raw/main/io_net_launch_binary_linux -o io_net_launch_binary_linux

# 添加执行权限
echo "设置执行权限并准备启动..."
chmod +x io_net_launch_binary_linux

# 启动 Ionet
echo "启动 Ionet..."
# ./io_net_launch_binary_linux 

echo "Ionet 安装完成！"

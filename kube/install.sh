# 安装k3s命令

# 安装 server
curl -sfL https://rancher-mirror.rancher.cn/k3s/k3s-install.sh | K3S_NODE_NAME=server INSTALL_K3S_EXEC="server --node-external-ip=127.0.0.1 --flannel-backend=wireguard-native" INSTALL_K3S_MIRROR=cn sh -

# 查看 server token
sudo cat /var/lib/rancher/k3s/server/token

# 安装 agent
curl -sfL https://rancher-mirror.rancher.cn/k3s/k3s-install.sh | K3S_NODE_NAME=agent INSTALL_K3S_EXEC="agent --node-external-ip=127.0.0.1"  INSTALL_K3S_MIRROR=cn K3S_URL=https://103.45.130.157:6443 K3S_TOKEN=server token sh -

# 卸载 agent
/usr/local/bin/k3s-agent-uninstall.sh

# 卸载 server
/usr/local/bin/k3s-uninstall.sh

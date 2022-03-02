docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker volume rm -f $(docker volume ls)
sudo rm -rf /run/secrets/kubernetes.io
sudo rm -rf /var/lib/etcd
sudo rm -rf /var/lib/kubelet
sudo rm -rf /var/lib/rancher
sudo rm -rf /etc/kubernetes
sudo rm -rf /opt/rke
sudo systemctl restart docker
sudo reboot



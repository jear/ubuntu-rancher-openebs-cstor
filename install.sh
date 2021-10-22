sudo apt-get update

# install Docker
sudo apt-get install     apt-transport-https     ca-certificates     curl     gnupg     lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg 
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker $USER

# preapre node for OpenEBS
sudo systemctl enable --now iscsid
#systemctl status iscsid 

# Test the empty disk is really empty
sudo vgremove VolBDSCStore -y
sudo wipefs -a /dev/sdb

newgrp docker 


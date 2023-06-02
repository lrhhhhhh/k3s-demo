#curl -sfL https://get.k3s.io | sh -  
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.26.4+k3s1 sh -
sudo rm -f /bin/kubectl 
sudo rm -f /bin/kc 
sudo ln -s /usr/local/bin/kubectl /bin/kubectl 
sudo ln -s /sur/local/bin/kubectl /bin/kc


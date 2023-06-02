sudo sed -i 's/server \\/server --disable servicelb \\/g' /etc/systemd/system/k3s.service
sudo systemctl daemon-reload && sudo systemctl restart k3s


echo "00 - 安装k3s && 安装helm"
cd 00-k3s/  
sh 01-install-k3s.sh 
sh 02-install-helm.sh
cd .. 

echo "01 - 关闭k3s ServiceLB"
cd 01-disable-ServiceLB/
sh disable-ServiceLB.sh
cd ..


echo "02 - 安装metallb"
cd 02-metallb/
sh 01-install-metallb.sh
cd ..


echo "03 - 安装cert-manager"
cd 03-cert-manager/
sh 01-install-cert-manager.sh
cd ..

echo "04 - 安装与配置k8s-dashboard"
cd 04-k8s-dashboard/
sh 01-install-dashboard.sh
cd ..


echo "05 - 安装ArgoCD"
cd 05-argocd/
sh 01-install-argocd.sh
cd ..

echo "完成"

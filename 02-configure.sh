echo "02 - 配置metallb"
cd 02-metallb/
sh 02-apply-config.sh
cd ..


echo "03 - 配置cert-manager"
cd 03-cert-manager/
sh 03-apply-config.sh
cd ..

echo "04 - 配置k8s-dashboard"
cd 04-k8s-dashboard 
sh 02-configure.sh 
cd .. 

echo "05 - 配置ArgoCD"
cd 05-argocd/
sh 02-apply.sh
sh 03-restart.sh
cd ..

echo "06 - 配置traefik dashboard"
cd 06-traefik-dashboard 
sh 01-configure.sh 
cd .. 

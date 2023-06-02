## 推荐阅读
doc：https://docs.rancher.cn/docs/k3s/installation/kube-dashboard/_index/


## 两种访问方式：
### 方式1 - 使用ssh隧道 + kubectl proxy 访问
```shell
ssh -L 8001:localhost:8001 -i ~/Desktop/<secret.pem> <username>@<ip>
kubectl proxy
```

访问web ui 并登录：`http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/` 

### 方式2 - 通过公网ip的方式访问



## 删除 
sudo k3s kubectl delete ns kubernetes-dashboard
sudo k3s kubectl delete clusterrolebinding kubernetes-dashboard
sudo k3s kubectl delete clusterrole kubernetes-dashboard

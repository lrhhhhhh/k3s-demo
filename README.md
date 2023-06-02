## intro 
在k3s上安装metallb & cert-manager & k8s dashboard & argocd，并配置traefik，保证可以从外网访问

没有提供https版本（因为需要域名），但我个人配置https成功，已经成功将个人工作流从docker+jenkins替换成了k3s + tekton + argocd 

traefik的资料比较少，变动较大，推荐阅读这个官方demohttps://github.com/traefik-workshops/traefik-workshop, 

此外还需要注意的是k3s中的traefik是通过helm controller管理的，修改配置需要编写HelmChartConfig的CRD。



## 顺序说明
1. 关闭k3s的ServiceLB
2. 安装metallb
3. 安装cert-manager
3. 安装kubernetes dashboard
4. 安装argocd


## 测试
- `kubectl apply -f test/test-whoami/whoami.yaml`
- `curl whoami.xxxx.com`
若这个测试的whoami服务无法访问，则说明配置出问题


## 使用方法
```shell
sh install.sh
# 等待所有服务启动
sh configure.sh
```


## 需要修改的变量
- 修改所有host地址
- 修改metallb的配置


## 访问
访问k8s dashboard所用的token，可以使用脚本`get-dashboard-token.sh`获取

访问argocd的密码所用到的脚本为`get-argocd-admin-pwd.sh`，账号为admin

traefik dashboard没有设置访问认证, 需要注意




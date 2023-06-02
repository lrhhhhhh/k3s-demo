doc: https://ranchermanager.docs.rancher.com/v2.6/troubleshooting/other-troubleshooting-tips/dns#check-upstream-nameservers-in-resolv-conf   



kubectl create -f ds-dnstest.yml


kubectl rollout status ds/dnstest -w

kubectl delete ds/dnstest

export DOMAIN=www.google.com
export DOMAIN=argocd.43-159-227-113.nip.io
echo "=> Start DNS resolve test"; kubectl get pods -l name=dnstest --no-headers -o custom-columns=NAME:.metadata.name,HOSTIP:.status.hostIP | while read pod host; do kubectl exec $pod -- /bin/sh -c "nslookup $DOMAIN > /dev/null 2>&1"; RC=$?; if [ $RC -ne 0 ]; then echo $host cannot resolve $DOMAIN; fi; done; echo "=> End DNS resolve test"

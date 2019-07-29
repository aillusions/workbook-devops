

kubectl version
kubectl cluster-info
kubectl run --image nginx webserver
kubectl get deploy
kubectl describe deploy webserver

kubectl get pod 
kubectl get deployments 

kubectl port-forward webserver-5748cdbbfc-klwpr 8000:80
curl http://localhost:8000

kubectl expose deploy webserver --port 80 --type NodePort  
kubectl get services
curl http://localhost:30900/



kubectl delete pod webserver-5748cdbbfc-klwpr

kubectl apply -f dashboard-adminuser.yaml
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}')

    get token


kubectl config use-context docker-for-desktop
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml
kubectl proxy

http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/login


kubectl delete service webserver
kubectl delete deployment webserver
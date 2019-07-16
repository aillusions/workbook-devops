

kubectl version
kubectl cluster-info
kubectl run --image nginx webserver
kubectl get deploy
kubectl describe deploy webserver

kubectl get pod 

kubectl port-forward webserver-5748cdbbfc-klwpr 8000:80
curl http://localhost:8000

kubectl expose deploy webserver --port 80 --type NodePort  
kubectl get services
curl http://localhost:30900/



## Comando minikube
```
minikube start
minikube status
minikube stop 
```  
## Comandos kubectl

## Chamando pod kubectl
```
$ kubectl apply -f pod.yaml
```
## Chamando deployment kubectl
```
$ kubectl apply -f deployment.yaml
```
## Chamando service kubectl
```
$ kubectl apply -f service.yaml
```
## Chamando get pods
```
$ kubectl get pods
``` 
## Chamando get deployments
```
$ kubectl get deployments
```
``` 
## Chamando delete  service / deployments
``` 
$ kubectl delete service metadata_name_service

$ kubectl delete deployment metadata_name_deployment
``` 
```
## Chamando get services
``` 
$ kubectl get service
``` 
``` 
## Criar objetos secret usando comandos
``` 
$ kubectl create secret generic mysql-pass --from-literal=password='a1s2d3f4'
``` 
## entrar no serviço usando docker
``` 
$ kubectl get secrets 
``` 
kubectl exec -it mysql-server-7dc4ffc46f-czbz9  bash  
``` 
## Cria todos os objetos que estão declarados no diretório
``` 
kubectl apply -f k8s/mysql/ 
``` 

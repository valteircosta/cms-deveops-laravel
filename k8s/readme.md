
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
## Chamando get services
``` 
$ kubectl get services
``` 
``` 
## Criar objetos secret usando comandos
``` 
$ kubectl create secret generic mysql-pass --from-literal=password='a1s2d3f4'
``` 
## chamando get secrets
``` 
$ kubectl get secrets 
``` 

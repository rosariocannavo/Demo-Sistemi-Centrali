#! /usr/bin/env bash
docker login

minikube delete --all

minikube start

cd NameSpace

kubectl apply -f namespace.yaml

cd ..

cd BeansTalk

kubectl apply -f beanstalk_deployment.yaml 

sleep 10

cd ..

echo "Entro dentro la cartella Actor e creo i due file di configurazione"

cd Actors

kubectl apply -f beanstalk_config_map.yaml 

sleep 10

kubectl apply -f job_producer.yaml 

kubectl apply -f job_consumer.yaml 

echo "Prometheus start"

kubectl create rolebinding -n kube-system metric-binding --role=extension-apiserver-authentication-reader --serviceaccount=demospace:default

kubectl create rolebinding -n kube-system test-binding --clusterrole=view --serviceaccount=demospace:default

kubectl create rolebinding -n demospace test-bindings --clusterrole=view --serviceaccount=demospace:default

kubectl create clusterrolebinding my-group-role-binding --clusterrole=edit --user=system:serviceaccount:demospace:default

kubectl apply -f monitoring.yaml

kubectl port-forward -n demospace deployment/prometheus 9090:9090

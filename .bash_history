# using 'sudo su' is not a good practice.
sudo apt update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo apt install docker.io -y
sudo systemctl enable --now docker # enable and start in single command.
# Adding GPG keys.
curl -fsSL "https://packages.cloud.google.com/apt/doc/apt-key.gpg" | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/kubernetes-archive-keyring.gpg
# Add the repository to the sourcelist.
echo 'deb https://packages.cloud.google.com/apt kubernetes-xenial main' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update 
sudo apt install kubeadm=1.20.0-00 kubectl=1.20.0-00 kubelet=1.20.0-00 -y
sudo kubeadm init
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get nodes
kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
sudo kubeadm token create --print-join-command
kubectl get nodes
clear
git clone https://github.com/LondheShubham153/two-tier-flask-app.git
ls
cd two-tier-flask-app/
ls
rm -rf k8s
mkdir k8s
cd k8s
vim two-tier-pod.yml
kubectl apply -f two-tier-pod.yml 
kubectl get pods
vim two-tier-deployment.yml 
kubectl apply -f two-tier-deployment.yml 
kubectl get pods
kubectl scale deployment two-tier-deployment.yml --repicas=2
kubectl scale deployment two-tier-deployment.yml --replicas=2
kubectl scale deployment two-tier-deployment --replicas=2
clear
kubectl scale deployment two-tier-deployment --replicas=2
ls
vim two-tier-deployment.yml 
ls
kubectl scale deployment two-tier-deployment --replicas=2
kubectl get pods
kubectl apply -f two-tier-deployment.yml
kubectl get pods
mv two-tier-deployment.yml two-tier-deploy.yml
ls
kubectl scale deployment two-tier-deploy --replicas=2
kubectl scale deployment two-tier-deploy --replicas=20
ls
cd two-tier-flask-app
ls
cd k8s/
ls
kubectl scale deployment two-tier-deploy --replicas=2
vim two-tier-deploy.yml 
kubectl scale deployment two-tier-deploy --replicas=2
vim two-tier-deploy.yml 
vim two-tier-d.yml
kubectl apply -f two-tier-d.yml 
ls
rm -rf two-tier-deploy.yml 
kubectl get pods
kubectl apply -f two-tier-d.yml 
vim two-tier-d.yml 
kubectl apply -f two-tier-d.yml 
kubectl sacle deployment two-tier-d --replicas=2
kubectl scale deployment two-tier-d --replicas=2
kubectl get deployments
sudo kubectl scale deployment two-tier-app --replicas=2
kubectl get pods
sudo kubectl scale deployment two-tier-d --replicas=20
kubectl scale deployment two-tier-d --replicas=20
vim two-tier-d.yml 
kubectl apply -f two-tier-d.yml 
kubectl get pods
kubectl scale deployment two-tier-d --replicas=2
ls
kubectl apply -f two-tier-d.yml
kubectl scale deployment two-tier-d --replicas=2
clear
kubectl apply -f two-tier-d.yml
vim two-tier-d.yml 
kubectl apply -f two-tier-d.yml
kubectl scale deployment two-tier-d --replicas=20
kubectl scale deployment two-tier-app --replicas=2
ls
kubectl get pods
kubectl scale deployment two-tier-app --replicas=2
kubectl get pods
kubectl scale deployment two-tier-apps --replicas=2
kubectl get pods
kubectl scale deployment two-tier-apps --replicas=5
kubectl get pods
kubectl scale deployment two-tier-apps --replicas=1
kubectl get pods
ls
vim two-tier-d.yml 
kubectl scale deployment two-tier-apps --replicas=1
kubectl get pods
kubectl scale deployment two-tier-apps --replicas=20
kubectl get pods
kubectl scale deployment two-tier-apps --replicas=1
kubectl get pods
kubectl scale deployment two-tier-appp --replicas=10
ls
vim two-tier-d.yml 
kubectl scale deployment two-tier-appp --replicas=10
kubectl scale deployment two-tier-apps --replicas=10
kubectl get deployments
ls
kubectl apply -f two-tier-d.yml 
kubectl get deployments
kubectl scale deployment two-tier-appp --replicas=10
kubectl get pods
kubectl scale deployment two-tier-appp --replicas=1
kubectl get pods
kubectl scale deployment two-tier-apps --replicas=1
kubectl scale deployment two-tier-app --replicas=1
kubectl get pods
kubectl get depolymenst
kubectl get depolyments
kubectl get deployments
vim two-tier-d.yml 
kubectl delete pods -l app=two-tier-app
kubectl delete pods -l app=two-tier-appp
kubectl delete pods -l app=two-tier-apps
kubectl get deployments
kubectl delete pods -l app=two-tier-app
kubectl get deployments
kubectl delete pods -l app=two-tier-appp
kubectl get deployments
kubectl get pods
ls
cd two-tier-flask-app/
ls
cd k8s
ls
vim two-tier-d.yml 
vim two-tier-service.yml
mv two-tier-service.yml two-tier-mysql.yml
vim two-tier-service.yml
cat two-tier-d.yml 
vi two-tier-service.yml 
kubectl get service
kubectl apply -f two-tier-service.yml 
kubectl get service
kubectl apply -f two-tier-mysql.yml 
kubectl get pods

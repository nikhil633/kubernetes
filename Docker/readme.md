-----------------------------------------Docker install -----------------------------------------------

# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl status docker
sudo systemctl start docker
sudo docker run hello-world


sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker
sudo systemctl start docker
curl -LO https://github.com/kubernetes/minikube/releases/latest/download/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

alias k="minikube kubectl --"
alias kubectl="minikube kubectl --"


minikube delete
minikube start --nodes 2 --memory 4096 --cpus 4


   23  sudo apt install -y docker.io
   24  sudo systemctl enable docker
   25  sudo systemctl start docker
   27  sudo usermod -aG docker nikhil
   28  minikube start --driver=docker
   29  kubectl get pods
   30  kubectl get po -A
   31  df -h
   32  free -h
   33  sudo useradd nikhil
   34  sudo usermod -aG docker nikhil
   35  minikube start --driver=docker
   36  sudo usermod -aG docker nikhil
   37  kubectl get pods
   38  kubectl get po -A
   39  docker ps
   40  newgrp docker
   41  exit
   42  docker ps
   43  groups
   44  azureuser sudo docker
   45  getent group docker
   46  sudo usermod -aG docker azureuser
   47  groups
   48  sudo usermod -aG docker nikhil
   49  groups
   50  exit
   51  minikube start --driver=docker
   52  kubectl get pods
   53  minikube start
   54  sudo groupadd docker
   55  docker status
   56  minikube status
   57  kubectl get nodes
   58  free -h
   59  df -h
   60  top
   61  clear
   62  kubectl get pods
   63  minikube status
   64  sudo snap install kubectl --classic
   65  kubectl version --client
   66  kubectl get pods



   k api-resources --namespace=false

   k api-resources --namespace=true

   k get clusterrole

   k describe clusterrole/system:node

   k get sa -A |grep default

   
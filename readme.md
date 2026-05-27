git add .
git commit -m "Initial commit"
git push -u origin main


az group create --name tfstate-rg --location centralindia

az storage account create --resource-group tfstate-rg --name nikhilterraformstate123 --sku Standard_LRS

az storage container create --name tfstate --account-name nikhilterraformstate123

az vm list-ip-addresses -o table


az aks get-credentials --resource-group nikhil-AKS --name nikhil-AKS

az vm start --resource-group vm --name nikhil-vm

az vm stop --resource-group vm --name nikhil-vm


az vm start --resource-group vm --name nikhil-vm-temp

az vm stop --resource-group vm --name nikhil-vm-temp

az vm deallocate --resource-group vm --name nikhil-vm

az vm restart --resource-group vm --name nikhil-vm

az aks list -o table

az aks stop --resource-group nikhil-AKS --name nikhil-AKS

az aks start --resource-group nikhil-AKS --name nikhil-AKS


sudo ./svc.sh install

sudo ./svc.sh start

sudo ./svc.sh status



---------------------k3s install----------------------------------------

sudo apt update && sudo apt upgrade -y
curl -sfL https://get.k3s.io | sh -
sudo systemctl status k3s
sudo kubectl get nodes
mkdir -p ~/.kube
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
sudo chown $USER:$USER ~/.kube/config
sudo sed -i "s/127.0.0.1/$(hostname -I | awk '{print $1}')/" ~/.kube/config
export KUBECONFIG=~/.kube/config
kubectl get nodes


curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
helm version

aws ec2 stop-instances --instance-ids INSTANCE_ID

hi
------------------------------------------------------------------------------------------------------------------------------

git rm -r --cached .terraform
git rm -r --cached kubernetes/vm/.terraform

git rm --cached kubernetes/vm/.terraform/terraform.tfstate
git status
git push -u origin main --force
git rm -r --cached vm/.terraform
git rm -r --cached kubernetes/vm/.terraform
git rm --cached vm/.terraform.tfstate
git reset --soft origin/main
git rev-parse --show-toplevel
Remove-Item -Recurse -Force "C:\Users\reddy\Downloads\.git"
git branch -M main

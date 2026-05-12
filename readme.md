git add .
git commit -m "Initial commit"
git push -u origin main


az group create --name tfstate-rg --location centralindia

az storage account create --resource-group tfstate-rg --name nikhilterraformstate123 --sku Standard_LRS

az storage container create --name tfstate --account-name nikhilterraformstate123

az vm list-ip-addresses -o table


az aks get-credentials --resource-group nikhil-AKS --name nikhil-AKS

az vm start --resource-group nikhil-vm --name nikhil-vm

az vm stop --resource-group nikhil-vm --name nikhil-vm

az vm deallocate --resource-group nikhil-vm --name nikhil-vm

az vm restart --resource-group nikhil-vm --name nikhil-vm

az aks list -o table

az aks stop --resource-group nikhil-AKS --name nikhil-AKS

az aks start --resource-group nikhil-AKS --name nikhil-AKS



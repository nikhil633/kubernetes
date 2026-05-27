 kubectl run nginx --image=nginx --dry-run=client -o yaml > pod-new.yaml
 kubectl exec -it nginx-pod -- sh

kubectl run nginx --image=nginx
kubectl set image deploy/nginx-deploy nginx=nginx:1.9.1
kubectl rollout history deploy/nginx-deploy
kubectl rollout undo deploy/nginx-deploy


cat /etc/resolv.conf

k exec -it myapp -- printenv

k expose deploy nginx-deploy --name myservice --port 80

ps -ef |grep kubelet

kubectl taint node worker-name gpu:true:NoSchedule



servicemesh and istio --->


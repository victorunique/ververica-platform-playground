Initialize AD service principle account:
create_ad_sp_account.sh

To clear kube config:
kubectl config get/delete-cluster/context/user

To switch current context:
kubectl config use-context <context_name>

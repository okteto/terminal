# terminal
Web-based terminal for Kubernetes development

Deploy a web-based terminal in your Kubernetes cluster. 

The pod is already configured with the following tools:
- [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [Helm](https://github.com/helm/helm)
- [Okteto](https://github.com/okteto/okteto)

It is also configured with such `bash` aliases:

        h="helm"
        k="kubectl"
        ke="kubectl exec -it"
        kd="kubectl describe"
        kl="kubectl logs"
        ktp="watch kubectl top pods"
        ktc="watch kubectl top pods --containers"

# Deploy it in Okteto Cloud

1. Login to [Okteto Cloud](https://cloud.okteto.com).
1. Deploy the helm chart: 

        helm install terminal -f values.yaml
        

After deploying, go to the Okteto Cloud in your browser and click on the URL. You'll need to confirm your okteto identity to access the terminal. The terminal will have access to everything in your namespace.

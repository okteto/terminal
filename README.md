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

# Deploy

1. Login to your Okteto instance
2. Deploy with `okteto deploy`

After deploying, go to the Okteto UI in your browser and click on the URL.
The terminal will have access to everything in your namespace.

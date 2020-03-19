# terminal
Web-based terminal for Kubernetes development

Deploy a web-based terminal in your Kubernetes cluster. The pod is already configured with the following tools:
- [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [Helml](https://github.com/helm/helm)
- [Okteto](https://github.com/okteto/okteto)


# Deploy it in Okteto Cloud

1. Login to [Okteto Cloud](https://cloud.okteto.com).
1. [Create a secret](https://okteto.com/docs/secrets) called `GOTTY_CREDENTIAL` in Okteto Cloud. For the value, use the `username:password` format.
1. Deploy the helm chart: 

        helm install terminal -f values.yaml
        

After deploying, go to the Okteto Cloud in your browser and click on the URL. Put your `username` and `password` to access the terminal. The terminal will have access to everything in your namespace.

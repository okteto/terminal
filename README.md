# terminal
Web-based terminal for Kubernetes development

Deploy a web-based terminal in your Kubernetes cluster. 

## Available Tools

The terminal comes pre-configured with essential cloud-native development tools:

### Core Tools
- **[Okteto CLI](https://github.com/okteto/okteto)** v3.9.0 - Cloud-native development platform
- **[Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)** v1.31.6 - Kubernetes command-line tool
- **[Helm](https://github.com/helm/helm)** v3.17.3 - Kubernetes package manager

### System Utilities
- **curl, wget** - HTTP clients for API testing
- **git** - Version control (if available in base image)
- **bash** - Enhanced shell with custom aliases
- **Standard Unix tools**: grep, sed, awk, find, tar, gzip, unzip, base64, and more

### Custom Aliases

The terminal includes helpful bash aliases for faster Kubernetes operations:

```bash
h="helm"                           # Quick Helm access
k="kubectl"                        # Quick kubectl access
ke="kubectl exec -it"              # Interactive pod execution
kd="kubectl describe"              # Describe resources
kl="kubectl logs"                  # View logs
ktp="watch kubectl top pods"       # Monitor pod resources
ktc="watch kubectl top pods --containers"  # Monitor container resources
kexec="./kexec"                    # Easy pod access utility
```

### Custom Utilities
- **kexec** - Simplified script for executing commands in deployment pods

## Deploy it in Okteto

1. Login to [Okteto](https://okteto.com).
1. Deploy using the Okteto manifest: 

        okteto deploy --wait
        

After deploying, access the terminal through the Okteto dashboard or the provided endpoint URL. The terminal requires Okteto authentication and provides full access to your namespace resources.

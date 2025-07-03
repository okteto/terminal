# kexec - Kubernetes Exec Helper Script

A convenient script to quickly exec into the first pod of a deployment.

## Usage

```bash
./kexec <deployment-name> [command]
```

## Examples

```bash
# Open an interactive bash session in the terminal deployment
./kexec terminal

# Run a specific command in the terminal deployment
./kexec terminal ls -la

# Check who you are in the pod
./kexec terminal whoami

# View logs from within the pod
./kexec terminal kubectl logs -n ${OKTETO_NAMESPACE} deployment/terminal

# Run multiple commands
./kexec terminal "ls -la && whoami && pwd"
```

## Features

- **Automatic namespace detection**: Uses `$OKTETO_NAMESPACE` if available
- **Error handling**: Shows helpful error messages and lists available deployments
- **Default command**: Opens bash if no command is specified
- **Simple and reliable**: Uses `kubectl exec -it deployment/name` for automatic pod discovery

## Installation

The script is automatically included in the terminal container and available at:
- `/root/kexec` (full path)
- `kexec` (alias in interactive bash sessions)

## Error Handling

If no pods are found for the specified deployment, the script will:
1. Show an error message
2. List available deployments in the namespace
3. Exit with code 1

## Requirements

- `kubectl` must be available in the container
- Proper RBAC permissions to list and exec into pods
- The target deployment must exist and have running pods
- No specific labeling requirements - kubectl handles pod discovery automatically
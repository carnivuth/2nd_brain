# Kubernetes

Kubernetes is a container orchestrator for managing high scale deployment challenges

## Architecture

The kubernetes cluster architecture presents itself as follows:

```mermaid
flowchart TD
subgraph control_plane
A[api-server]
B[scheduler]
C[control manager]
D[etcd]
end
subgraph worker_1
E[kublet]
subgraph container_runtime_1
F[pod]
G[pod]
H[pod]
end
end
subgraph worker_2
I[kublet]
subgraph container_runtime_2
J[pod]
K[pod]
L[pod]
end
end
subgraph worker_3
M[kublet]
subgraph container_runtime_3
N[pod]
O[pod]
P[pod]
end
end
control_plane --> worker_1 & worker_2 & worker_3
```

Where the **control plane** node manages the worker nodes that run pods, pods are managed trough a container runtime (*for example `containerd`*) that runs the contianers, the control plane is  also responsible for managing deployments

## Networking in a kubernetes cluster

Containers and pods share a private network stack  that allow them to communicate inside the cluster, and a name service
## Deployment in a kubernetes cluster

Deployment on a kubernetes cluster is done trough the use of the api server using a descriptor that specifies:

- containers
- images
- replicas
- volumes
- configurations

> [!NOTE] pods are the minimum unit of deployment in kubernetes
# Day 17


## Table of Contents

- [My Learnings Today](#my-learnings-today-)
- [Today's Logs](#todays-logs-)
- [Key Highlights](#key-highlights-)
- [References](#references-)



## My Learnings Today 🎯

- Learned about AKS (Azure Kubernetes Services)
  - How to create K8S cluster
  - How to set agentpool, node count

- Virtual machine scale set in Azure
  - How to set new Inbound port rule, where I needed to `AllowAnyCustom31882Inbound` (`31882` will be replaced with your argocd-server NodePort http:IP)

- Argo CD configuration

  1. Firstly SSH into Azure VM, and then run the following commands

      - `kubectl edit secrets argocd-initial-admin-secret -n argocd`
      - `echo <encoded-password> | base64 --decode`
      - `kubectl get svc -n argocd`
      - `kubectl edit svc argocd-server -n argocd`
        - Change type to the NodePort

      - `kubectl get svc -n argocd` - get the NodePort of argocd-server, the HTTP one (e.g., 80:31882)
      - `kubectl get nodes -o wide` - get the Node External IP
      - Open the Argo CD locally - `<external-IP-address>:<NodePort>`
      - Then login with username as `admin` and password which you got by decoding the `argocd-initial-admin-secret`

  2. Then you need to setup repository & add new project to ArgoCD from web

      - Settings > Repositories > CONNECT REPO, then...
        - Choose `VIA HTTPS`
        - Type `git`
        - Name (optionally) `voting-app`
        - Project default
        - Repository URL will be `https://<ACCESS-TOKEN>@dev.azure.com/<AZURE-DEVOPS-ORG-NAME>/voting-app/_git/voting-app`
        - Then CONNECT

      - Applications > New App, then...
        - Application Name - `voteapp-service`
        - Project Name - `default`
        - Sync Policy - `Automatic` (by default, it takes 3min to identify the change in Repo and Deploy it on K8S cluster)
        - Select the Repository URL
        - Provide Path of `k8s-specifications` folder
        - Select Default Cluster URL
        - Namespace can be `default`




## Today's Logs 📅

- Installed kubectl & Argo CD in ubuntu VM
- Configured Argo CD with Git repo (via Azure DevOps)
- Setup ArgoCD and deploy it on K8S cluster (in this case, deploying the `k8s-specifications` folder)



## Key Highlights 🌟

- Created my first AKS kubernetes cluster
- Got to know about Argo CD and setup with a Git repo and K8S
- Started leaning topics related to CD



## References 📚

- [Argo CD - Getting Started Docs](https://argo-cd.readthedocs.io/en/stable/getting_started/)
- [DevOps Project using Azure DevOps and GitOps by @AbhishekVeeramalla](https://youtu.be/dmGW22W3VOs?si=74b8meAAYwLAM-N-)

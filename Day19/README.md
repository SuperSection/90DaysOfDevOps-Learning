# Day 19


## Table of Contents

- [My Learnings Today](#my-learnings-today-)
- [Today's Logs](#todays-logs-)
- [Key Highlights](#key-highlights-)
- [References](#references-)



## My Learnings Today 🎯

### Advance Docker Concepts

- Distroless image ([gcr distroless GitHub page](https://github.com/GoogleContainerTools/distroless))
- Multi staging in Dockerfile
- We can only just have the code  and the required dependdencies without linux distro
- Example of setting an environment in the Distroless image: `ENV PYTHONPATH="/app/deps"`
- `docker ps -aq` - get all Container IDs
- `docker images -aq` - get all Image IDs
- `docker rm $(docker ps -aq)` - remove all Docker Containers
- `docker rmi $(docker images -aq)` - remove all Docker Images

- How to push image to DockerHub registry
  - `docker  image tag` - rename the image (add your username as prefix) and then push it

- Volumes in docker
  - How to map a volume to an image and how to store data in volume
  - Debugging empty volume mapping

- Network in docker
  - `docker network ls`
  - Common network available: bridge, none, host
  - User-defined bridge
  - Others (MacVLAN, IPvlan) isn't used anymore, because K8S is used

### ImagePullSecrets in K8S

- Image Pull Secrets in Kubernetes
  - We can pull images from the private registies / repositories
  - At first go to Container Registries > Select the partiuclar Registry > Settings > Access Keys
    - From Access Key, get Username and Password

#### Command to create ACR ImagePullSecret

**NOTE:** The namespace of pods and the secret should be same

```bash
kubectl create secret docker-registry <secret-name> \
    --namespace <namespace> \
    --docker-server=<container-registry-name>.azurecr.io \
    --docker-username=<service-principal-ID> \
    --docker-password=<service-principal-password>
```

- Setup imagePullSecrets in specific deployment.yaml file(s)
  - `kubectl get secrets`
  - At the end of the spec details add the `imagePullSecrets` option:

      ```yaml
      spec:
      containers:
      - image: soumoazurecicd.azurecr.io/votingapp:23
        name: vote
        ports:
        - containerPort: 80
          name: vote
      imagePullSecrets:
      - name: acr-secret
      ```

- Deployment checks
  - `kubectl get deploy vote -o yaml`
  - `kubectl get deploy result -o yaml` (if CD is setup for it)



## Today's Logs 📅

- Attended "Docker Advanced" live session by Shubham Sir
- Complete CI/CD for vote-service and result-service
- Debug issues while running the Shell Script
- Debugging on Kubernetes cluster
- Checking correct modification of image tag in K8S manifest files
- Understanding of Argo CD workflow
- Defining 10sec of timeout.reconciliation for the Argo CD to detect & deploy changes



## Challenges and Solutions 🚧

### Unexpected error while running the Shell Script

**Why was This Happening?**

- As I edited the script in Web Azure DevOps platform (on Windows), it likely had CRLF (\r\n) line endings.
- It was expecting LF (\n) line endings (Unix-style line endings), causing these errors.

#### Solution I followed

1. Clone the Repository Locally with Authentication
2. Fix Line Endings in the Script

    ```bash
    cd voting-app
    sed -i 's/\r$//' scripts/updateK8sManifests.sh
    chmod +x scripts/updateK8sManifests.sh
    ```

3. Commit & Push the Changes

    ```bash
    git add scripts/updateK8sManifests.sh
    git commit -m "Fix line endings in updateK8sManifests.sh"
    git push origin main
    ```

4. Also I needed to modify the script a little bit as I debug few issues on the go



## Key Highlights 🌟

- Impleted my first end-to-end CI/CD workflow using Azure DevOps and GitOps
- Revised Advance Docker concepts from scratch



## References 📚

- [Pull an Image from a Private Registry](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/)
- [DevOps Project using Azure DevOps and GitOps by @AbhishekVeeramalla](https://youtu.be/dmGW22W3VOs?si=74b8meAAYwLAM-N-)
- [Docker Advanced in TWS Platform](https://www.trainwithshubham.com/s/courses/67624be270363125a629df9d/take)

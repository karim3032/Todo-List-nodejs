✅ DevOps Internship Assessment Report
🧑‍💻 Submitted by: Karim Mohsen
 
🔹 Part 1: CI Pipeline with GitHub Actions (30 points)
✅ Tasks Completed:
•	✅ Forked and cloned the Node.js Todo List App repo.
•	✅ Configured the .env file with MongoDB Atlas connection string.
•	✅ Dockerized the app using a custom Dockerfile.
•	✅ Created a private Docker Hub repository.
•	✅ Installed GitHub Actions runner on the VM.
•	✅ Built and pushed the image to Docker Hub using a GitHub Actions pipeline.
📸 Screenshots:
•	screenshots/1_ci_workflow_run.png – GitHub Actions CI workflow run
•	screenshots/2_dockerhub_image.png – Docker Hub private image push confirmation
 
🔹 Part 2: Provision VM and Configure with Ansible (30 points)
✅ Tasks Completed:
•	✅ Created a Linux VM locally using VirtualBox.
•	✅ Set up passwordless SSH using a custom key pair.
•	✅ Created an Ansible inventory and playbook to:
o	Install Docker
o	Install K3s (as a master node)
📸 Screenshot:
•	screenshots/3_ansible_playbook_output.png – Ansible playbook output showing success
 
🔹 Part 3: Deploy to K3s & GitOps with Argo CD (40 points)
✅ Tasks Completed:
•	✅ Installed Argo CD in the K3s cluster (argocd-server exposed via NodePort)
•	✅ Accessed Argo CD GUI from local machine
•	✅ Created a Kubernetes manifest set to deploy the app:
o	Deployment
o	Service (NodePort)
o	MongoDB URI stored securely as a Kubernetes Secret
o	DockerHub image pull secret configured for private registry
•	✅ Connected Argo CD to GitHub repo and synced the app
•	✅ Confirmed the app was deployed and running correctly
•	✅ Verified database connection using the secret
📸 Screenshots:
•	screenshots/4_argocd_app_synced.png – Argo CD showing synced app
•	screenshots/5_app_accessed_browser.png – Todo app accessed in browser
•	screenshots/6_kubectl_get_all.png – Output of kubectl get all confirming deployment
•	screenshots/7_Connected to database Via secret.png – App connected to MongoDB using the secret
 
📁 Project Folder Structure
pgsql
CopyEdit
Todo-List-nodejs/
├── .github/
│   └── workflows/
│       └── ci.yml
├── ansible/
│   ├── inventory.ini
│   └── playbook.yml
├── deployment/
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── mongo-secret.yaml
│   └── image-pull-secret.yaml
├── Dockerfile
├── README.txt
├── screenshots/
│   ├── 1_ci_workflow_run.png
│   ├── 2_dockerhub_image.png
│   ├── 3_ansible_playbook_output.png
│   ├── 4_argocd_app_synced.png
│   ├── 5_app_accessed_browser.png
│   ├── 6_kubectl_get_all.png
│   └── 7_Connected to database Via secret.png
└── .env (excluded)
 
🎬 Final Notes for Submission
•	✅ Secrets stored securely using Kubernetes Secrets and GitHub Secrets.
•	✅ No secrets committed to the repository.
•	✅ Private Docker registry access handled via image pull secret.
•	✅ App deployed via GitOps using Argo CD.
•	✅ Full documentation and instructions in README.txt.
•	✅ Screenshots organized under screenshots/.
•	✅ Demo video recorded and within 3-minute limit.


# Strapi Project

This is a sample Strapi project created for demo/testing purposes.

## How to Run

1. Install dependencies:
```bash
npm install
```

2. Start the server:
```bash
npm run develop
```

Open [http://localhost:1337](http://localhost:1337) in our browser.

## Content Types

- Devops Article
- User

## Tech Stack

- Strapi v5.12.4
- Node.js v22.14.0
- SQLite
# strapi--Monitor-hub


Task 3 – Deploy Strapi on EC2 using Docker and Terraform
📌 Overview
This task demonstrates how to deploy a Strapi application to an AWS EC2 instance using Docker for containerization and Terraform for infrastructure provisioning. Everything is automated — once the Docker image is pushed and the Terraform files are applied, your Strapi app will be live on your EC2 instance with minimal manual steps.

🧱 Project Structure
bash
Copy
Edit
strapi--Monitor-hub/
├── Dockerfile           # Containerizes the Strapi app
├── main.tf              # Terraform config to launch EC2 instance and provision it
├── variables.tf         # Stores input variables used in main.tf
├── outputs.tf           # Displays useful output like public IP of the instance
├── .gitignore           # Ignores node_modules, build files, etc.
⚙️ What This Setup Does
Builds and pushes a Docker image of your Strapi app to Docker Hub.

Uses Terraform to:

Launch an EC2 instance

SSH into the instance via user data script

Install Docker on the server

Pull the Strapi image from Docker Hub

Run it as a container exposed on port 1337

🚧 Prerequisites
Before getting started, make sure you have the following:

AWS Account + IAM credentials configured

Docker installed

Terraform installed

GitHub and Docker Hub accounts

🐳 Step 1: Dockerize the Strapi App
In our Strapi project folder:

bash
Copy
Edit
docker build -t shashikumar025/strapi-app .
docker push shashikumar025/strapi-app
This creates a Docker image and pushes it to your Docker Hub repo.

🛠️ Step 2: Terraform Setup
Initialize Terraform:

bash
Copy
Edit
terraform init
Deploy the infrastructure:

bash
Copy
Edit
terraform apply
Terraform will:

Launch a new EC2 instance

Use cloud-init (user_data) to install Docker

Automatically pull our Docker image

Run our Strapi container

🌐 Access the Strapi Admin Panel
After deployment, Terraform will output the EC2 instance’s public IP. You can access the admin panel at:

arduino
Copy
Edit
http://<EC2_PUBLIC_IP>:1337/admin
Example:

arduino
Copy
Edit
http://13.234.123.45:1337/admin
📁 .gitignore Highlights
 .gitignore file ensures sensitive or bulky files aren't pushed:

gitignore
Copy
Edit
node_modules
.env
build
.cache
✅ Outcome
Once everything is deployed:

our Strapi app runs in a container on EC2

All setup steps are automated via Docker and Terraform

No manual SSH needed after deployment

🙌 Author
Shashi Kumar
Docker Hub: shashikumar025
GitHub: PearlThoughts-DevOps-Internship

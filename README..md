# 🚀 Strapi Deployment on AWS EC2 using Terraform

This project demonstrates how to deploy a Strapi application on an AWS EC2 instance using Terraform.

---

## ✅ What Was Done

- Created a Terraform project to provision an EC2 instance.
- Used the Ubuntu AMI in the `us-east-1` 
- Set up a **security group** allowing:
  - Port `22` (SSH)
  - Port `1337` (Strapi)
- Used an existing AWS Key Pair `strapi-key` for SSH access.
- Deployed a basic EC2 instance and prepared it to host Strapi.

---

## 🛠️ Prerequisites

- An AWS account with EC2 access
- A key pair created in the AWS Console (`strapi-key`)
- IAM credentials set up locally (`aws configure`)
- Terraform installed on your machine or EC2 instance

---

## 🧱 File Structure

```bash
terraform-strapi-deploy/
│
├── main.tf         # Main infrastructure definition
├── variables.tf    # Configurable variables (AMI, key, etc.)
├── outputs.tf      # Output public IP after deployment
└── README.md       # This file

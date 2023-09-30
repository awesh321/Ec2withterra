# Setting Up Ubuntu EC2 Instance with Docker and Ansible using Terraform

This repository contains Terraform scripts to create an Ubuntu EC2 instance on AWS, and automatically install Docker and Ansible using user data.

## Prerequisites

Before you begin, make sure you have the following prerequisites installed and set up:

- [Terraform](https://www.terraform.io/)
- [AWS Account](https://aws.amazon.com/)
- AWS Access Key ID and Secret Access Key configured
- SSH Key Pair for accessing the EC2 instance

## Steps to Create EC2 Instance and Install Docker & Ansible

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/awesh321/Ec2withterr.git
   cd your-repo
   ```

2. **Update Terraform Variables:**
   - Open `variables.tf` and update variables like `aws_region`, `aws_access_key`, `aws_secret_key`, `key_name`, etc., as per your configuration.

3. **Initialize Terraform:**
   ```bash
   terraform init
   ```

4. **Review and Apply Terraform Changes:**
   ```bash
   terraform plan
   terraform apply
   ```

5. **Access the EC2 Instance:**
   After Terraform completes the provisioning, you can access the Ubuntu EC2 instance using SSH.
   ```bash
   ssh -i /path/to/your-key.pem ubuntu@public-ip-of-your-instance
   ```

6. **Verify Docker and Ansible Installation:**
   Once logged into the EC2 instance, verify that Docker and Ansible are installed.
   ```bash
   docker --version
   ansible --version
   ```

## Clean Up

To avoid incurring charges, make sure to destroy the resources created by Terraform after you are done.

```bash
terraform destroy
```

Happy coding!

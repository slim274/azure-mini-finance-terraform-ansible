# Setup and deployment workflow

**Project:** Mini Finance on Azure — Terraform Infrastructure + Ansible Deployment

This repository includes Terraform configuration under `terraform/` and Ansible inventories and playbooks under `ansible/`. The documented workflow uses `terraform/` for Azure provisioning and `ansible/` for application deployment. Review provider versions, variables, inventory values and planned infrastructure changes before running against a cloud account.

### 1. Provision Azure infrastructure

From `mini-finance/terraform`, run `terraform init`, `terraform plan`, and `terraform apply` against authenticated Azure credentials.

### 2. Verify SSH

Test `ssh azureuser@<public-ip>` using an existing trusted SSH key.

### 3. Run Ansible deployment

From `mini-finance/ansible`, execute `ansible-playbook -i inventory.ini site.yml` to install Nginx, fetch Mini Finance and check HTTP.

### 4. Verify browser response

Open the VM’s public IP and confirm the static dashboard renders. The report records a successful HTTP `status_code: 200`.

## Before rerunning

1. Confirm current credentials, SSH public key and intended cloud account/region.
2. Replace the historical public IPs with fresh Terraform outputs and update the Ansible inventory.
3. Do not place database passwords, tokens or private keys inside files committed to GitHub.
4. Run appropriate linting/syntax checks and validate configuration before applying changes.
5. Destroy unused lab cloud resources after collecting necessary proof to prevent unplanned charges.

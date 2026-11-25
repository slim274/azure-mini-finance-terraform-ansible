# Issues encountered and resolutions

This document summarizes problems and fixes described in the Week 12 assignment. Some problems appeared during setup and were resolved before the final screenshot evidence.

### Azure VM SKU or region unavailable

**Reported resolution:** Changed to an available instance size and supported location.

### Incorrect Git repository URL

**Reported resolution:** Corrected the upstream source to the repo linked below and reran the playbook.

### Git checkout hanging

**Reported resolution:** Checked the source URL and connectivity.

### Inventory not found / wrong directory

**Reported resolution:** Worked from the Ansible project folder with the expected inventory file.

## Diagnostic approach

1. Start with the failing Terraform/Ansible command and its exact error output.
2. Check inventory, network reachability, SSH access and the current cloud resource IPs.
3. Review Ansible play recap or Terraform plan and make the smallest justified change.
4. Rerun validation and collect fresh evidence before claiming success.

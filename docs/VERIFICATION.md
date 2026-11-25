# Deployment verification and evidence

The submitted Week 12 report describes the following checks:

- `terraform apply` completes and returns a public VM IP.
- SSH login works with the installed key.
- Ansible playbook finishes without failed hosts.
- Browser loads the Mini Finance dashboard and `uri` verification reports HTTP 200.

## Evidence gallery

The [screenshot gallery](../screenshots/README.md) contains 13 original embedded images extracted from the assignment Word document. The README displays a curated subset.

## What can be concluded

The assignment **reports** these actions and outcomes in the historical lab. Screenshots demonstrate the described sessions where visible, but they cannot establish current availability, operational hardening, or whether public IPs are still assigned.

## Additional checks before claiming production readiness

Confirm external access controls, secrets management, current TLS configuration, OS updates, least-privilege roles, observability, backups and documented rollback. These items are recommended checks, **not claims that they were implemented in the report**.

# Project 04: Terraform with Local Docker

Terraform manages a Docker image, network, and container on an Ubuntu VM using the kreuzwerker/docker provider. This local project practices infrastructure-as-code workflow without creating cloud resources.

## Requirements

- Ubuntu 22.04 VM
- Terraform
- Docker Engine
- Access to the public Project 2 image in GitHub Container Registry

## Resources managed

- The Project 2 image from GHCR
- A dedicated Docker bridge network
- An Nginx container mapped to a configurable VM port

The image is retained locally after `terraform destroy`.

## Terraform workflow

Run commands from this directory:

```bash
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
terraform output

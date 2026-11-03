variable "image" {
  description = "Public Project 2 image in GitHub Container Registry"
  type        = string
  default     = "ghcr.io/zaidmohd6521-lang/project-02-docker-ci:latest"
}

variable "container_name" {
  description = "Name for the Terraform-managed container"
  type        = string
  default     = "project-04-terraform-web"
}

variable "host_port" {
  description = "VM port mapped to Nginx port 80"
  type        = number
  default     = 8087
}

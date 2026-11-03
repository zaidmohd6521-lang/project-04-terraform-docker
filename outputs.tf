output "local_url" {
  description = "Local URL for the Terraform-managed web container"
  value       = "http://localhost:${var.host_port}"
}

output "container_id" {
  description = "Docker ID of the Terraform-managed container"
  value       = docker_container.web.id
}

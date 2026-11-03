resource "docker_image" "web" {
  name         = var.image
  keep_locally = true
}

resource "docker_network" "web" {
  name = "${var.container_name}-network"
}

resource "docker_container" "web" {
  name    = var.container_name
  image   = docker_image.web.image_id
  restart = "unless-stopped"

  networks_advanced {
    name = docker_network.web.name
  }

  ports {
    internal = 80
    external = var.host_port
    protocol = "tcp"
  }
}

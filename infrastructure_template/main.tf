provider "docker" {

}

resource "docker_container" "frontend"{
    #docker run -d -p 3030:3030 --name container_frontend imagen
    image = docker_image.img_frontend.latest
    name = "container_frontend"
    attach = false
    ports {
        internal = var.ports
        external = var.ports
    }
}

resource "docker_container" "backend"{
    #docker run -d -p 3030:3030 --name container_backend imagen
    image = docker_image.img_backend.latest
    name = "container_backend"
    attach = false
    ports {
        internal = var.ports2
        external = var.ports2
    }
}


resource "docker_image" "img_backend" {
    
    name = "container_backend"

}

resource "docker_image" "img_frontend" {
    
    name = "container_frontend"

}

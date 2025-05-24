resource "yandex_compute_instance" "vm-1" {
  name        = var.name
  platform_id = var.platform_id

  scheduling_policy {
    preemptible = var.preemptible != null ? var.preemptible : false
  }

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = var.size
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    user-data = templatefile("${path.module}/cloud-init.yaml.tmpl", {
      ssh_key = var.ssh_key
    })
  }
}

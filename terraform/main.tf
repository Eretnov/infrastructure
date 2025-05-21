module "yandex_cloud_instance" {
  source  = "./modules/tf-yc-instance"
  ssh_key = var.ssh_key
  zone    = var.zone
  image_id = var.image_id
  subnet_id = module.yandex_cloud_network.subnet_ids[var.zone]
}

module "yandex_cloud_network" {
  source = "./modules/tf-yc-network" 
}

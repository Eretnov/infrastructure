output "ip_address" {
  value = module.yandex_cloud_instance.ip_address
}

output "external_ip_address_vm" {
  value = module.yandex_cloud_instance.external_ip_address_vm
}

output "network_id" {
  value = module.yandex_cloud_network.network_id
}

output "subnet_ids" {
  value = module.yandex_cloud_network.subnet_ids
}

output "subnet_cidr_blocks" {
  value = module.yandex_cloud_network.subnet_cidr_blocks
}

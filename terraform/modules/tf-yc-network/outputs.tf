output "network_id" {
  description = "ID сети VPC"
  value       = data.yandex_vpc_network.default.id
}

output "subnet_ids" {
  description = "ID подсетей по зонам"
  value = {
    for zone, subnet in data.yandex_vpc_subnet.subnets : zone => subnet.id
  }
}

output "subnet_cidr_blocks" {
  description = "CIDR-подсети по зонам"
  value = {
    for zone, subnet in data.yandex_vpc_subnet.subnets : zone => subnet.v4_cidr_blocks
  }
}

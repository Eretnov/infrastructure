variable "name" {
  type        = string
  default     = "chapter5-lesson2-std-040-31"
}

variable "platform_id" {
  type        = string
  default     = "standard-v1"
}

variable "size" {
  type        = number
  default     = 50
}

variable "ssh_key" {
  type        = string
}

variable "zone" {
  type        = string
}

variable "image_id" {
  type        = string
}

variable "subnet_id" {
  type        = string
}

variable "preemptible" {
  type        = bool
  default     = null
}

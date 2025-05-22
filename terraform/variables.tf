variable "ssh_key" {
  type        = string
}

variable "cloud_id" {
  type        = string
}

variable "folder_id" {
  type        = string
}

variable "zone" {
  type        = string
  default     = "ru-central1-a"
}

variable "image_id" {
  type        = string
  default     = "fd80qm01ah03dkqb14lc"
}

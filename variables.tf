variable "hypervisor" {
  description = "proxmox node names list"
  type = list(string)
  sensitive = true
}
variable "pm_api_url" {
  type = string
  sensitive = true
}

variable "pm_api_token_id" {
  type = string
  sensitive = true
}

variable "pm_api_token_secret" {
  type= string
  sensitive = true 
}

variable "vmids"{
    description = "List of VM IDs"
    type = list(string)
    sensitive = true
}

variable "ips" {
    description = "List of IP addresses"
    type = list(string)
    sensitive = true
}

variable "tag"{
    description = "Tag for the VMs"
    type = string
    sensitive = true
}

variable "pool"{
    description = "Pool for the VMs"
    type = string
    sensitive = true
}

variable "ciuser"{
    description = "Cloud-init user for the VMs"
    type = string
    sensitive = true
}

variable "sshkeys"{
    description = "SSH keys for the VMs"
    type = string
    sensitive = true
}

variable "clone"{
    description = "Template to clone for the VMs"
    type = string
    sensitive = true
}

variable "scsihw" {
    description = "SCSI controller type for the VMs"
    type = string
    sensitive = true
}

variable "storage" {
    description = "Storage for the cloud-init disk"
    type = string
    sensitive = true
}
variable "format" {
    description = "Disk format for the VMs"
    type = string
    sensitive = true
}
variable "passerel"{
    description = "Passerel for the VMs"
    type = string
    sensitive = true
}
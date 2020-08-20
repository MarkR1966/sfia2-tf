variable "cidr_block" {
  description = "This variable states the CIDR block"
  default     = "192.168.0.0/16"
}

variable "sn_cidr_block" {
  description = "This variable states the subnet_a cidr_block"
  default     = "192.168.1.0/24"
}

variable "open_internet" {
  default = "0.0.0.0/0"
}


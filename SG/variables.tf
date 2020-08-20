variable "sg_web_name" {
  default = "DefaultSGweb"
}

variable "sg_web_description" {
  default = "Allow SSH"
}

variable "open_internet" {
  default = "0.0.0.0/0"
}

variable "ingress_ports" {
  description = "List of Ingress Ports"
  type        = list(number)
  default     = [22]
}

variable "outbound_port" {
  description = "Port open to allow outbound connection"
  default     = 0
}

variable "vpc_id" {
  description = "Default VPC ID"
}

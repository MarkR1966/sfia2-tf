variable "sg_web_name" {
  default = "DefaultSGweb"
}

variable "sg_web_description" {
  default = "Allow SSH"
}

variable "open_internet" {
  default = "0.0.0.0/0"
}

variable "my_ip" {
  description = "IP address of terraform EC2"
  default     = "3.250.72.18/32"
}

variable "ingress_ports" {
  description = "List of Ingress Ports"
  type        = list(number)
  default     = [22, 8080]
}

variable "ingress_ports2" {
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

variable "vpc_id" {
  type        = string
  description = "ID of the existing VPC"
}

variable "subnet_id" {
  type        = string
  description = "ID of the existing subnet"
}

variable "sg_name" {
  type = string
}

variable "subnets" {
  description = "Configuración de las subredes por tipo"
  type = map(object({
    cidr_block = string
    availability_zone = string
    type = string
  }))
  default = {}
}

variable "vpc_id" {
  type = string
  default = null
  description = "vpc_id"
}

variable "name_prefix" {
  type = string
  default = null
  description = "name_prefix"
}
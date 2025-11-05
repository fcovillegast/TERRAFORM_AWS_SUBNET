
variable "vpc_id" {
  type = string
  description = "vpc_id"
}

variable "name_prefix" {
  type = string
  description = "name_prefix"
  default = "nopreffix"

}

variable "cidr_block" {
    type = string
    description = "The cidr block of subnet"
}
variable "availability_zone" {
    type = string
    description = "The one of the sbnet"
}
variable "tags" {
  type = object({})
  description = "The tags"

  default = {
    "Object" = "subnet"
  }
}
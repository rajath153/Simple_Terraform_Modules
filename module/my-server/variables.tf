variable "image" {
    type=string

}

variable "inst_type" {
    type = string

}

variable "inst_tag" {
  type=string

}

variable "public_key" {
    type = string
    description = "your public key to access EC2 instance"
}

variable "my_cidr_block" {
   type = string
}

variable "my_vpc_id" {
  type = string
}

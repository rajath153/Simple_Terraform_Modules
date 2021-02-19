variable "region"{
    type        = string
    description = "AWS region"
    
}
variable "AWS_access_key" {
  type = string
}

variable "AWS_secret_key" {
    type = string
}

variable "public_key" {
    type        =string
    description = "Public key to access EC2 instance"
}


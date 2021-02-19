#configure provider
provider "aws" {
  region      =  var.region
  access_key  =  var.AWS_access_key
  secret_key  =  var.AWS_secret_key
  version     = "3.0"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"

}

module "rajath_server" {
    source          = "../module/my-server"
    my_vpc_id       = aws_vpc.my_vpc.id
    my_cidr_block   = "10.0.0.0/16"
    image           = "ami-01aab85a5e4a5a0fe"
    inst_type       = "t2.micro"
    public_key      =  var.public_key
    inst_tag        = "my-server"

}

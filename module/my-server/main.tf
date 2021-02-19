terraform {
  required_version = ">=0.12"
}

resource "aws_subnet" "my_subnets" {

  vpc_id     = var.my_vpc_id
  cidr_block = var.my_cidr_block

}


resource "aws_instance" "test_instance" {
  ami           = var.image
  instance_type = var.inst_type
  subnet_id     = aws_subnet.my_subnets.id
  key_name = var.public_key
  tags = {
    Name = var.inst_tag
  }
}

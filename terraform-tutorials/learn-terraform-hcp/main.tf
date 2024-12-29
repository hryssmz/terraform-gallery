# main.tf
provider "aws" {
  region = var.region
}

data "aws_ami" "al2023" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.6.20241212.0-kernel-6.1-x86_64"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "al2023" {
  ami           = data.aws_ami.al2023.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

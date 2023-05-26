data "aws_vpc" "default" {
  default = true
}

data "aws_ami" "amznlinux" {
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "name"
    values = ["al2023*"]
  }
}

data "aws_ami" "amznubuntu" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20230325"]
  }
}


resource "aws_instance" "ansible_test" {
  ami                    = data.aws_ami.amznlinux.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["${aws_security_group.ssh_in.id}"]
  key_name               = "lab-key"
  tags = {
    "Name"    = "ansible_test_centos"
    "purpose" = "lab"
  }
}

resource "aws_instance" "ansible_test_ubuntu" {
  ami                    = data.aws_ami.amznubuntu.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["${aws_security_group.ssh_in.id}"]
  key_name               = "lab-key"
  tags = {
    "Name"    = "ansible_test_ubuntu"
    "purpose" = "lab"
  }

}
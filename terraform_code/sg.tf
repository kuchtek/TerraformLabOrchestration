resource "aws_security_group" "ssh_in" {
  name        = "ssh_from_home"
  description = "Allow ssh access from home laptop machine"
  ingress {
    protocol    = "tcp"
    from_port   = "22"
    to_port     = "22"
    cidr_blocks = ["${var.home_ip}"]
  }
  egress {
    protocol    = "tcp"
    from_port   = "80"
    to_port     = "80"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    protocol    = "tcp"
    from_port   = "443"
    to_port     = "443"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    purpose = "lab"
  }
}

resource "aws_security_group" "solr_sg" {
  name = "allow_solar"
  ingress {
    protocol    = "tcp"
    from_port   = "8983"
    to_port     = "8983"
    cidr_blocks = ["${var.home_ip}"]
  }
  tags = {
    purpose = "lab"
  }
}
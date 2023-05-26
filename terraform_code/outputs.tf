output "centos_public_ip" {
  value = aws_instance.ansible_test.public_ip
}

output "ubuntu_public_ip" {
  value = aws_instance.ansible_test_ubuntu.public_ip
}
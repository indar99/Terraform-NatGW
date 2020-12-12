resource "aws_instance" "web-dev" {
  ami           = "${var.aws_amis}"
  instance_type = "${var.vm_type}"
  vpc_security_group_ids = ["${aws_security_group.allow_tls2.id}"] 
  subnet_id = "${aws_subnet.prisub2.id}" 
  user_data = "${file("apache.sh")}"
  key_name = "myip"

  tags = {
    Name = "web-dev"
  }
}

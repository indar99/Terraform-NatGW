resource "aws_instance" "web" {
  ami           = "${var.aws_amis}"
  instance_type = "${var.vm_type}"
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"] 
  subnet_id = "${aws_subnet.pubsub.id}" 
  user_data = "${file("apache.sh")}"
  key_name = "myip"

  tags = {
    Name = "web-prod"
  }
}

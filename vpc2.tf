resource "aws_vpc" "myvpc2" {
  cidr_block       = "${var.vpc_cidr2}"
  instance_tenancy = "default"

  tags = {
    Name = "Dev"
  }
}

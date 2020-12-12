resource "aws_eip" "byoip-ip" {
  vpc              = true
   tags = {
    Name = "publicip"
  }
  
}

resource "aws_nat_gateway" "ngw" {
  allocation_id = "${aws_eip.byoip-ip.id}"
  subnet_id     = "${aws_subnet.devsub2.id}"

  tags = {
    Name = "gw NAT"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.myvpc.id}"

  tags = {
    Name = "pigw"
  }
}

resource "aws_internet_gateway" "gw2" {
  vpc_id = "${aws_vpc.myvpc2.id}"

  tags = {
    Name = "pigw2"
  }
}

resource "aws_subnet" "pubsub" {
  vpc_id     = "${aws_vpc.myvpc.id}"
  cidr_block = "${cidrsubnet(var.vpc_cidr,4,1)}"
  availability_zone = "${data.aws_availability_zones.azs.names[0]}"
  map_public_ip_on_launch = true
  

  tags = {
    Name = "Prod"
  }
}


resource "aws_subnet" "devsub2" {
  vpc_id     = "${aws_vpc.myvpc2.id}"
  cidr_block = "${cidrsubnet(var.vpc_cidr2,4,0)}"
  availability_zone = "${data.aws_availability_zones.azs.names[0]}"
  map_public_ip_on_launch = true


  tags = {
    Name = "devsub2"
  }
}


resource "aws_subnet" "prisub2" {
  vpc_id     = "${aws_vpc.myvpc2.id}"
  cidr_block = "${cidrsubnet(var.vpc_cidr2,4,2)}"
  availability_zone = "${data.aws_availability_zones.azs.names[1]}"
  map_public_ip_on_launch = false


  tags = {
    Name = "Dev-prisub2"
  }
}

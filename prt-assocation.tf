resource "aws_route_table_association" "prt-associate-sub" {
  subnet_id      = "${aws_subnet.pubsub.id}"
  route_table_id = "${aws_route_table.prt.id}"
}

resource "aws_route_table_association" "prt-associate-prisub2" {
  subnet_id      = "${aws_subnet.prisub2.id}"
  route_table_id = "${aws_route_table.prt2-private.id}"
}



resource "aws_route_table_association" "prt-associate-pubsub2" {
  subnet_id      = "${aws_subnet.devsub2.id}"
  route_table_id = "${aws_route_table.prt2-pub.id}"
}


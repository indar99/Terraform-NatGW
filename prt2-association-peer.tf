resource "aws_route" "prt2-pub-peer" {
  route_table_id            = "${aws_route_table.prt2-pub.id}"
  destination_cidr_block    = "${var.vpc_cidr}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.myvpcpeer.id}"
}



resource "aws_route" "prt2-private-peer" {
  route_table_id            = "${aws_route_table.prt2-private.id}"
  destination_cidr_block    = "${var.vpc_cidr}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.myvpcpeer.id}"
}

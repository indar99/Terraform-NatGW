resource "aws_route" "prt-peer" {
  route_table_id            = "${aws_route_table.prt.id}"
  destination_cidr_block    = "${var.vpc_cidr2}"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.myvpcpeer.id}"
}


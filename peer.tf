resource "aws_vpc_peering_connection" "myvpcpeer" {
  peer_vpc_id   = "${aws_vpc.myvpc.id}"
  vpc_id        = "${aws_vpc.myvpc2.id}"
  peer_owner_id = 415216890706
  auto_accept   = true
}

output "vpc_peer_con_id" {
  value = "${aws_vpc_peering_connection.myvpcpeer.id}"
}

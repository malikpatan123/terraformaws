# modules/vpc/outputs.tf
output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}

output "igw_id" {
  value = aws_internet_gateway.igw.id
}

/*
output "nat_gateway_id" {
  value = aws_nat_gateway.nat.id
}
*/
output "public_route_table_id" {
  value = aws_route_table.public.id
}

output "private_route_table_id" {
  value = aws_route_table.private.id
} 

output "demo_public_sg_id" {
  value = aws_security_group.demo_public_sg.id
}

output "demo_private_sg_id" {
  value = aws_security_group.demo_private_sg.id
}
/*
output "s3_vpc_endpoint_id" {
  value = aws_vpc_endpoint.s3.id
}
*/

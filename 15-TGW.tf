#Transit Gateway for Tokyo Region
resource "aws_ec2_transit_gateway" "tokyo_TGW" {
    description = "tokyo-TGW"
    tags = {
      Name = "tokyo-TGW"
    }
}

#Transit Gateway Attachment to Tokyo VPC
resource "aws_ec2_transit_gateway_vpc_attachment" "tokyovpc_attachment" {
  transit_gateway_id = aws_ec2_transit_gateway.tokyo_TGW.id
  subnet_ids = [
    aws_subnet.private-sn-tokyo-1c-01.id,
    aws_subnet.private-sn-tokyo-1d-01.id
  ]

  vpc_id = aws_vpc.tokyovpc.id

 
  tags = {
    Name = "tokyovpc_attachment"
  }
}


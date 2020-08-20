resource "aws_vpc" "sfia2_vpc" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true

  tags = {
    Name = "sfia2_tf"
  }
}

resource "aws_internet_gateway" "sfia2_gw" {
  vpc_id = aws_vpc.sfia2_vpc.id

  tags = {
    name = "sfia2_igw"
  }
}

resource "aws_route_table" "sfia2_rt" {
  vpc_id = aws_vpc.sfia2_vpc.id

  route {
    cidr_block = var.open_internet
    gateway_id = aws_internet_gateway.sfia2_gw.id
  }

  tags = {
    Name = "sfia2_rt"
  }
}

resource "aws_route_table_association" "sfia2_rta" {
  subnet_id      = aws_subnet.sfia2_subnet_a.id
  route_table_id = aws_route_table.sfia2_rt.id
}

data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "sfia2_subnet_a" {
  vpc_id            = aws_vpc.sfia2_vpc.id
  cidr_block        = var.sn_cidr_block
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "sfia2_subnet_a"
  }
}

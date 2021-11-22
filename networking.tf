resource "aws_vpc" "main1" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    "Name" = "Main 1 VPC"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id                  = var.vpc1_id
  cidr_block              = "172.16.0.0/25"
  map_public_ip_on_launch = true

  availability_zone = var.subnet1_zone_1a

  tags = {
    "Name" = "Subnet 5 | Main 1"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc1_id

  tags = {
    "Name" = "Gateway Main 1"
  }
}

resource "aws_route_table" "r" {
  vpc_id = var.vpc1_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  }
}

resource "aws_route_table_association" "table_subnet1" {
  subnet_id      = var.subnet_id
  route_table_id = var.route_table_id
}
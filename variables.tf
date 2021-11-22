variable "region" {
  default="us east"
  description = "Region in AWS"
}

variable "subnet1_zone_1a" {
  description = "Zone 1a - Subnet 1"
}

variable "ami_id" {
  description = "AMI id"
  type = string
}

variable "key1" {
  description = "KEY"
  type = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string
}

variable "vpc1_id" {
    description="id vpc"
}

variable "internet_gateway_id" {
    description="id IGW"
}

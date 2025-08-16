# Simple Terraform snippet: AWS VPC + subnet
provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "ztna_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "ztna-vpc"
  }
}

resource "aws_subnet" "ztna_subnet" {
  vpc_id                  = aws_vpc.ztna_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "ztna-subnet"
  }
}

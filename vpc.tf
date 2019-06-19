resource "aws_vpc" "vpc-01dc26e6bcb4fada6" {
  assign_generated_ipv6_cidr_block = false
  cidr_block                       = "10.0.0.0/16"
  enable_dns_hostnames             = true
  enable_dns_support               = true
  instance_tenancy                 = "default"

  tags = {
    Name      = "dev(Main VPC)"
    Terraform = true
  }
}

resource "aws_vpc" "vpc-0891b153fab207be1" {
  assign_generated_ipv6_cidr_block = false
  cidr_block                       = "172.0.0.0/16"
  enable_dns_hostnames             = false
  enable_dns_support               = true
  instance_tenancy                 = "default"

  tags = {
    Name = "staging"
  }
}

resource "aws_vpc" "vpc-0a5b1b5fb4399251b" {
  assign_generated_ipv6_cidr_block = false
  cidr_block                       = "192.0.0.0/16"
  enable_dns_hostnames             = false
  enable_dns_support               = true
  instance_tenancy                 = "default"

  tags = {
    Name = "prod"
  }
}

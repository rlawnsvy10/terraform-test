resource "aws_subnet" "subnet-00ef6b4b6ee21c0c7" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "172.0.10.0/24"
  map_public_ip_on_launch         = false

  tags = {
    Name = "staging-priv-subnet-2a"
  }

  vpc_id = "data.terraform_remote_state.vpc.aws_vpc_vpc-0891b153fab207be1_id"
}

resource "aws_subnet" "subnet-0210c9278233469b4" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "192.0.21.0/24"
  map_public_ip_on_launch         = false

  tags = {
    Name = "prod-public-subnet-2b"
  }

  vpc_id = "data.terraform_remote_state.vpc.aws_vpc_vpc-0a5b1b5fb4399251b_id"
}

resource "aws_subnet" "subnet-03a457a5387008a6d" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "172.0.11.0/24"
  map_public_ip_on_launch         = false

  tags = {
    Name = "staging-priv-subnet-2b"
  }

  vpc_id = "data.terraform_remote_state.vpc.aws_vpc_vpc-0891b153fab207be1_id"
}

resource "aws_subnet" "subnet-04631ed4edc122f28" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "192.0.20.0/24"
  map_public_ip_on_launch         = false

  tags = {
    Name = "prod-public-subnet-2a"
  }

  vpc_id = "data.terraform_remote_state.vpc.aws_vpc_vpc-0a5b1b5fb4399251b_id"
}

resource "aws_subnet" "subnet-05a530172f1315d62" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "192.0.11.0/24"
  map_public_ip_on_launch         = false

  tags = {
    Name = "prod-priv-subnet-2b"
  }

  vpc_id = "data.terraform_remote_state.vpc.aws_vpc_vpc-0a5b1b5fb4399251b_id"
}

resource "aws_subnet" "subnet-064765ca0bf0bbf0a" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "10.0.20.0/24"
  map_public_ip_on_launch         = false

  tags = {
    Name = "dev-public-subnet-2a"
  }

  vpc_id = "data.terraform_remote_state.vpc.aws_vpc_vpc-01dc26e6bcb4fada6_id"
}

resource "aws_subnet" "subnet-06ab754b" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "172.31.16.0/20"
  map_public_ip_on_launch         = true
  tags               			  = {}
  vpc_id                          = "vpc-869b0bef"
}

resource "aws_subnet" "subnet-07819cd4ca430a6c4" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "10.0.1.0/24"
  map_public_ip_on_launch         = true

  tags = {
    Name = "public"
  }

  vpc_id = "vpc-0c3f0a1d5bb2b1aaf"
}

resource "aws_subnet" "subnet-07dbf3622ee69781b" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "10.0.2.0/24"
  map_public_ip_on_launch         = false

  tags = {
    Environment = "dev"
    Name        = "private"
    Terraform   = true
  }

  vpc_id = "data.terraform_remote_state.vpc.aws_vpc_vpc-01dc26e6bcb4fada6_id"
}

resource "aws_subnet" "subnet-0a13bf6108804e730" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "172.0.21.0/24"
  map_public_ip_on_launch         = false

  tags = {
    Name = "staging-public-subnet-2b"
  }

  vpc_id = "data.terraform_remote_state.vpc.aws_vpc_vpc-0891b153fab207be1_id"
}

resource "aws_subnet" "subnet-0a2fb0b06f152672d" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "10.0.1.0/24"
  map_public_ip_on_launch         = true

  tags = {
    Environment = "dev"
    Name        = "public"
    Terraform   = true
  }

  vpc_id = "data.terraform_remote_state.vpc.aws_vpc_vpc-01dc26e6bcb4fada6_id"
}

resource "aws_subnet" "subnet-0a4aee30bdbd36592" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "172.0.20.0/24"
  map_public_ip_on_launch         = false

  tags = {
    Name = "staging-public-subnet-2a"
  }

  vpc_id = "data.terraform_remote_state.vpc.aws_vpc_vpc-0891b153fab207be1_id"
}

resource "aws_subnet" "subnet-0c3ee23dd8e57696a" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "10.0.10.0/24"
  map_public_ip_on_launch         = false

  tags = {
    Name = "dev-priv-subnet-2a"
  }

  vpc_id = "data.terraform_remote_state.vpc.aws_vpc_vpc-01dc26e6bcb4fada6_id"
}

resource "aws_subnet" "subnet-0ca6f5293e492f549" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "192.0.10.0/24"
  map_public_ip_on_launch         = false

  tags = {
    Name = "prod-priv-subnet-2a"
  }

  vpc_id = "data.terraform_remote_state.vpc.aws_vpc_vpc-0a5b1b5fb4399251b_id"
}

resource "aws_subnet" "subnet-0ea4cd57382e12e26" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "10.0.11.0/24"
  map_public_ip_on_launch         = false

  tags = {
    Name = "dev-priv-subnet-2b"
  }

  vpc_id = "data.terraform_remote_state.vpc.aws_vpc_vpc-01dc26e6bcb4fada6_id"
}

resource "aws_subnet" "subnet-0ffa862e1ce2651ae" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "10.0.21.0/24"
  map_public_ip_on_launch         = false

  tags = {
    Name = "dev-public-subnet-2b"
  }

  vpc_id = "data.terraform_remote_state.vpc.aws_vpc_vpc-01dc26e6bcb4fada6_id"
}

resource "aws_subnet" "subnet-6c5bc305" {
  assign_ipv6_address_on_creation = false
  cidr_block                      = "172.31.0.0/20"
  map_public_ip_on_launch         = true
  tags  						  = {}
  vpc_id                          = "vpc-869b0bef"
}

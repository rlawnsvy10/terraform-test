resource "aws_internet_gateway" "igw-083a9f5dd3ece54ab" {
  tags = {
    Name = "staging-igw"
  }

  vpc_id = "vpc-0891b153fab207be1"
}

resource "aws_internet_gateway" "igw-09f5eeb3f8ffebb13" {
  tags = {
    Name = "prod-igw"
  }

  vpc_id = "vpc-0a5b1b5fb4399251b"
}

resource "aws_internet_gateway" "igw-0be878eaf2227d6c6" {
  tags = {
    Name      = "dev-igw"
    Terraform = true
  }

  vpc_id = "vpc-01dc26e6bcb4fada6"
}

resource "aws_network_acl" "acl-09894cf2ac3497885" {
  ingress {
    action     = "allow"
    cidr_block = "192.0.20.244/32"
    from_port  = "22"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "6"
    rule_no    = "22"
    to_port    = "22"
  }

  subnet_ids = ["subnet-05a530172f1315d62", "subnet-0ca6f5293e492f549"]

  tags = {
    Name = "prod-private-acl"
  }

  vpc_id = "vpc-0a5b1b5fb4399251b"
}

resource "aws_network_acl" "acl-0df124ab54baa40a8" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "80"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "6"
    rule_no    = "201"
    to_port    = "80"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "443"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "6"
    rule_no    = "202"
    to_port    = "443"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "32768"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "6"
    rule_no    = "203"
    to_port    = "60999"
  }

  ingress {
    action     = "allow"
    cidr_block = "175.208.191.123/32"
    from_port  = "22"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "6"
    rule_no    = "200"
    to_port    = "22"
  }

  subnet_ids = ["subnet-04631ed4edc122f28", "subnet-0210c9278233469b4"]

  tags = {
    Name = "prod-public-acl"
  }

  vpc_id = "vpc-0a5b1b5fb4399251b"
}

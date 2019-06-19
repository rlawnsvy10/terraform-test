resource "aws_security_group" "kjp-priv-test-sg_sg-0cc05c0caf02a3d1d" {
  description = "kjp-priv-test-sg"

  egress {
    cidr_blocks = ["192.0.20.244/32"]
    description = "SSH for Bastion"
    from_port   = "22"
    protocol    = "tcp"
    self        = false
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["192.0.20.244/32"]
    description = "SSH for Bastion Host"
    from_port   = "22"
    protocol    = "tcp"
    self        = false
    to_port     = "22"
  }

  name                   = "kjp-priv-test-sg"
  revoke_rules_on_delete = false

  tags = {
    Name = "kjp-priv-test-sg"
  }

  vpc_id = "vpc-0a5b1b5fb4399251b"
}

resource "aws_security_group" "kjp-pub-test-sg_sg-0329db18c50205267" {
  description = "kjp-pub-test-sg"

  egress {
    cidr_blocks = ["175.208.191.123/32"]
    description = "SSH for my IP"
    from_port   = "22"
    protocol    = "tcp"
    self        = false
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Web"
    from_port   = "80"
    protocol    = "tcp"
    self        = false
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSL"
    from_port   = "443"
    protocol    = "tcp"
    self        = false
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["175.208.191.123/32"]
    description = "SSH for My IP"
    from_port   = "22"
    protocol    = "tcp"
    self        = false
    to_port     = "22"
  }

  name                   = "kjp-pub-test-sg"
  revoke_rules_on_delete = false

  tags = {
    Name = "kjp-pub-test-sg"
  }

  vpc_id = "vpc-0a5b1b5fb4399251b"
}

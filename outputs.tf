output "aws_instance_i-0602eeffd3be3f045_prod-pub-test-web_id" {
  description = "EC2 Web instance"
  value = "${aws_instance.i-0602eeffd3be3f045_prod-pub-test-web.id}"
}

output "aws_instance_i-08f6e54963c986993_prod-bastion-a_id" {
  description = "EC2 bastion instance"
  value = "${aws_instance.i-08f6e54963c986993_prod-bastion-a.id}"
}

output "aws_instance_i-0f499ee9f1b28d022_prod-priv-test-db_id" {
  description = "EC2 DB instance" 
  value = "${aws_instance.i-0f499ee9f1b28d022_prod-priv-test-db.id}"
}

output "aws_s3_bucket_oper-trace-log_id" {
  description = "s3 bucket for operator trace log"
  value = "${aws_s3_bucket.oper-trace-log.id}"
}

output "aws_s3_bucket_policy_oper-trace-log_id" {
  description = "s3 bucket policy for operator trace log"
  value = "${aws_s3_bucket_policy.oper-trace-log.id}"
}

output "aws_security_group_kjp-priv-test-sg_sg-0cc05c0caf02a3d1d_id" {
  description = "SG for priv network instance"
  value = "${aws_security_group.kjp-priv-test-sg_sg-0cc05c0caf02a3d1d.id}"
}

output "aws_security_group_kjp-pub-test-sg_sg-0329db18c50205267_id" {
  description = "SG for public network instance"
  value = "${aws_security_group.kjp-pub-test-sg_sg-0329db18c50205267.id}"
}

output "aws_vpc_vpc-01dc26e6bcb4fada6_id" {
  description = "vpc-dev"
  value = "${aws_vpc.vpc-01dc26e6bcb4fada6.id}"
}

output "aws_vpc_vpc-0891b153fab207be1_id" {
  description = "vpc-staging"
  value = "${aws_vpc.vpc-0891b153fab207be1.id}"
}

output "aws_vpc_vpc-0a5b1b5fb4399251b_id" {
  description = "vpc-prod"
  value = "${aws_vpc.vpc-0a5b1b5fb4399251b.id}"
}

output "aws_internet_gateway_igw-083a9f5dd3ece54ab_id" {
  description = "igw-staging"
  value = "${aws_internet_gateway.igw-083a9f5dd3ece54ab.id}"
}

output "aws_internet_gateway_igw-09f5eeb3f8ffebb13_id" {
  description = "igw-prod"
  value = "${aws_internet_gateway.igw-09f5eeb3f8ffebb13.id}"
}

output "aws_internet_gateway_igw-0be878eaf2227d6c6_id" {
  description = "igw-dev"
  value = "${aws_internet_gateway.igw-0be878eaf2227d6c6.id}"
}

output "aws_network_acl_acl-09894cf2ac3497885_id" {
  description = "acl-prod-private"
  value = "${aws_network_acl.acl-09894cf2ac3497885.id}"
}

output "aws_network_acl_acl-0df124ab54baa40a8_id" {
  description = "acl-prod-public"
  value = "${aws_network_acl.acl-0df124ab54baa40a8.id}"
}

output "aws_subnet_subnet-00ef6b4b6ee21c0c7_id" {
  description = "staging-priv-subnet-2a"
  value = "${aws_subnet.subnet-00ef6b4b6ee21c0c7.id}"
}

output "aws_subnet_subnet-0210c9278233469b4_id" {
  description = "prod-public-subnet-2b"
  value = "${aws_subnet.subnet-0210c9278233469b4.id}"
}

output "aws_subnet_subnet-03a457a5387008a6d_id" {
  description = "staging-priv-subnet-2b"
  value = "${aws_subnet.subnet-03a457a5387008a6d.id}"
}

output "aws_subnet_subnet-04631ed4edc122f28_id" {
  description = "prod-public-subnet-2a"
  value = "${aws_subnet.subnet-04631ed4edc122f28.id}"
}

output "aws_subnet_subnet-05a530172f1315d62_id" {
  description = "prod-priv-subnet-2b"
  value = "${aws_subnet.subnet-05a530172f1315d62.id}"
}

output "aws_subnet_subnet-064765ca0bf0bbf0a_id" {
  description = "dev-public-subnet-2a"
  value = "${aws_subnet.subnet-064765ca0bf0bbf0a.id}"
}

output "aws_subnet_subnet-0a13bf6108804e730_id" {
  description = "staging-public-subnet-2b"
  value = "${aws_subnet.subnet-0a13bf6108804e730.id}"
}

output "aws_subnet_subnet-0a4aee30bdbd36592_id" {
  description = "staging-public-subnet-2a"
  value = "${aws_subnet.subnet-0a4aee30bdbd36592.id}"
}

output "aws_subnet_subnet-0c3ee23dd8e57696a_id" {
  description = "dev-priv-subnet-2a"
  value = "${aws_subnet.subnet-0c3ee23dd8e57696a.id}"
}

output "aws_subnet_subnet-0ca6f5293e492f549_id" {
  description = "prod-priv-subnet-2a"
  value = "${aws_subnet.subnet-0ca6f5293e492f549.id}"
}

output "aws_subnet_subnet-0ea4cd57382e12e26_id" {
  description = "dev-priv-subnet-2b"
  value = "${aws_subnet.subnet-0ea4cd57382e12e26.id}"
}

output "aws_subnet_subnet-0ffa862e1ce2651ae_id" {
  description = "dev-public-subnet-2b"
  value = "${aws_subnet.subnet-0ffa862e1ce2651ae.id}"
}

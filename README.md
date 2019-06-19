## Terraform Test

* 생성되는 리소스
	* Dev / Staging / Prod 3개의 VPC로 구성 하였으며, 실제 구현은 Prod VPC만 하였습니다.
	* Prod Public VPC에서 사용할 Internet Gateway
	* Prod Private VPC에서 사용할 NACL, Security Group
	* VPC당 4개의 Subnet(Prod 2개 / Priv 2개)
	* AZ당NAT Gateway(EIP 적용) 1개
	* Internet Gateway, NAT Gateway에 Subnet을 연결하는 Route Table, Route Table Association
	* 구성상 VPN, VPG, Transit Gateway를 사용하면 좋으나, 여기서는 구현하지 않습니다.
	* 실제 구현은 Prod VPC를 기준으로 하였으며, Bastion은 이중화를 하지 않고 1대만 구성 하였습니다.
	* EC2 Instance 중 EC2 DB instance가 Prod Private에 구성되어 있으며, Bastion으로만 접근할 수 있게 하였습니다.
	* Bastion은 EIP를 가지며, ACL과 Security Group으로 제어합니다.
	* CloudWatch를 통한 vpcflow(VPC Traffic Monitoring)와 Cloudtrail을 통한 Oper-Trace-Log(작업 추적용)를 구성하였으나, 여기서는 넣지 않았습니다. 

## Outputs

| Name | Description |
|------|-------------|
| aws\_instance\_i-0602eeffd3be3f045\_prod-pub-test-web\_id | EC2 Web instance |
| aws\_instance\_i-08f6e54963c986993\_prod-bastion-a\_id | EC2 bastion instance |
| aws\_instance\_i-0f499ee9f1b28d022\_prod-priv-test-db\_id | EC2 DB instance |
| aws\_internet\_gateway\_igw-083a9f5dd3ece54ab\_id | igw-staging |
| aws\_internet\_gateway\_igw-09f5eeb3f8ffebb13\_id | igw-prod |
| aws\_internet\_gateway\_igw-0be878eaf2227d6c6\_id | igw-dev |
| aws\_network\_acl\_acl-09894cf2ac3497885\_id | acl-prod-private |
| aws\_network\_acl\_acl-0df124ab54baa40a8\_id | acl-prod-public |
| aws\_s3\_bucket\_oper-trace-log\_id | s3 bucket for operator trace log |
| aws\_s3\_bucket\_policy\_oper-trace-log\_id | s3 bucket policy for operator trace log |
| aws\_security\_group\_kjp-priv-test-sg\_sg-0cc05c0caf02a3d1d\_id | SG for priv network instance |
| aws\_security\_group\_kjp-pub-test-sg\_sg-0329db18c50205267\_id | SG for public network instance |
| aws\_subnet\_subnet-00ef6b4b6ee21c0c7\_id | staging-priv-subnet-2a |
| aws\_subnet\_subnet-0210c9278233469b4\_id | prod-public-subnet-2b |
| aws\_subnet\_subnet-03a457a5387008a6d\_id | staging-priv-subnet-2b |
| aws\_subnet\_subnet-04631ed4edc122f28\_id | prod-public-subnet-2a |
| aws\_subnet\_subnet-05a530172f1315d62\_id | prod-priv-subnet-2b |
| aws\_subnet\_subnet-064765ca0bf0bbf0a\_id | dev-public-subnet-2a |
| aws\_subnet\_subnet-0a13bf6108804e730\_id | staging-public-subnet-2b |
| aws\_subnet\_subnet-0a4aee30bdbd36592\_id | staging-public-subnet-2a |
| aws\_subnet\_subnet-0c3ee23dd8e57696a\_id | dev-priv-subnet-2a |
| aws\_subnet\_subnet-0ca6f5293e492f549\_id | prod-priv-subnet-2a |
| aws\_subnet\_subnet-0ea4cd57382e12e26\_id | dev-priv-subnet-2b |
| aws\_subnet\_subnet-0ffa862e1ce2651ae\_id | dev-public-subnet-2b |
| aws\_vpc\_vpc-01dc26e6bcb4fada6\_id | vpc-dev |
| aws\_vpc\_vpc-0891b153fab207be1\_id | vpc-staging |
| aws\_vpc\_vpc-0a5b1b5fb4399251b\_id | vpc-prod |

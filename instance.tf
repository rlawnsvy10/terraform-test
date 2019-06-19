resource "aws_instance" "i-0602eeffd3be3f045_prod-pub-test-web" {
  ami                         = "ami-08ab3f7e72215fe91"
  associate_public_ip_address = false
  availability_zone           = "ap-northeast-2a"
  cpu_core_count              = "1"
  cpu_threads_per_core        = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = false
  ebs_optimized           = false
  get_password_data       = false
  instance_type           = "t2.micro"
  ipv6_address_count      = "0"
  key_name                = "terraform-test-key"
  monitoring              = false
  private_ip              = "192.0.20.169"

  root_block_device {
    delete_on_termination = true
    iops                  = "100"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  source_dest_check = true
  subnet_id         = "subnet-04631ed4edc122f28"

  tags = {
    Name = "prod-pub-test-web"
  }

  tenancy                = "default"
  volume_tags            = {}
  vpc_security_group_ids = ["sg-0329db18c50205267"]
}

resource "aws_instance" "i-08f6e54963c986993_prod-bastion-a" {
  ami                         = "ami-08ab3f7e72215fe91"
  associate_public_ip_address = true
  availability_zone           = "ap-northeast-2a"
  cpu_core_count              = "1"
  cpu_threads_per_core        = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = false
  ebs_optimized           = false
  get_password_data       = false
  instance_type           = "t2.micro"
  ipv6_address_count      = "0"
  key_name                = "terraform-test-key"
  monitoring              = false
  private_ip              = "192.0.20.244"

  root_block_device {
    delete_on_termination = true
    iops                  = "100"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  source_dest_check = true
  subnet_id         = "subnet-04631ed4edc122f28"

  tags = {
    Name = "prod-bastion-a"
  }

  tenancy                = "default"
  volume_tags            = {}
  vpc_security_group_ids = ["sg-0329db18c50205267"]
}

resource "aws_instance" "i-0f499ee9f1b28d022_prod-priv-test-db" {
  ami                         = "ami-08ab3f7e72215fe91"
  associate_public_ip_address = false
  availability_zone           = "ap-northeast-2a"
  cpu_core_count              = "1"
  cpu_threads_per_core        = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = false
  ebs_optimized           = false
  get_password_data       = false
  instance_type           = "t2.micro"
  ipv6_address_count      = "0"
  key_name                = "terraform-test-key"
  monitoring              = false
  private_ip              = "192.0.10.243"

  root_block_device {
    delete_on_termination = true
    iops                  = "100"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  source_dest_check = true
  subnet_id         = "subnet-0ca6f5293e492f549"

  tags = {
    Name = "prod-priv-test-db"
  }

  tenancy                = "default"
  volume_tags    		 = {}
  vpc_security_group_ids = ["sg-0cc05c0caf02a3d1d"]
}

resource "aws_s3_bucket" "oper-trace-log" {
  acl            = "private"
  arn            = "arn:aws:s3:::oper-trace-log"
  bucket         = "oper-trace-log"
  force_destroy  = false
  hosted_zone_id = "Z3W03O7B5YMIYP"
  region         = "ap-northeast-2"
  request_payer  = "BucketOwner"
  tags           = {}

  versioning {
    enabled    = false
    mfa_delete = false
  }
}

resource "aws_s3_bucket_policy" "elasticbeanstalk-ap-northeast-2-610695744462" {
  bucket = "elasticbeanstalk-ap-northeast-2-610695744462"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:DeleteBucket",
      "Effect": "Deny",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:s3:::elasticbeanstalk-ap-northeast-2-610695744462",
      "Sid": "eb-58950a8c-feb6-11e2-89e0-0800277d041b"
    },
    {
      "Action": "s3:PutObject",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::610695744462:role/aws-elasticbeanstalk-ec2-role"
      },
      "Resource": "arn:aws:s3:::elasticbeanstalk-ap-northeast-2-610695744462/resources/environments/logs/*",
      "Sid": "eb-ad78f54a-f239-4c90-adda-49e5f56cb51e"
    },
    {
      "Action": [
        "s3:ListBucket",
        "s3:ListBucketVersions",
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::610695744462:role/aws-elasticbeanstalk-ec2-role"
      },
      "Resource": [
        "arn:aws:s3:::elasticbeanstalk-ap-northeast-2-610695744462",
        "arn:aws:s3:::elasticbeanstalk-ap-northeast-2-610695744462/resources/environments/*"
      ],
      "Sid": "eb-af163bf3-d27b-4712-b795-d1e33e331ca4"
    }
  ],
  "Version": "2008-10-17"
}
POLICY
}

resource "aws_s3_bucket_policy" "kky-test-elb-log" {
  bucket = "kky-test-elb-log"

  policy = <<POLICY
{
  "Id": "AWSConsole-AccessLogs-Policy-1557996155115",
  "Statement": [
    {
      "Action": "s3:PutObject",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::600734575887:root"
      },
      "Resource": "arn:aws:s3:::kky-test-elb-log/test-elb/AWSLogs/610695744462/*",
      "Sid": "AWSConsoleStmt-1557996155115"
    },
    {
      "Action": "s3:PutObject",
      "Condition": {
        "StringEquals": {
          "s3:x-amz-acl": "bucket-owner-full-control"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "delivery.logs.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::kky-test-elb-log/test-elb/AWSLogs/610695744462/*",
      "Sid": "AWSLogDeliveryWrite"
    },
    {
      "Action": "s3:GetBucketAcl",
      "Effect": "Allow",
      "Principal": {
        "Service": "delivery.logs.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::kky-test-elb-log",
      "Sid": "AWSLogDeliveryAclCheck"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_s3_bucket_policy" "oper-trace-log" {
  bucket = "oper-trace-log"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetBucketAcl",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudtrail.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::oper-trace-log",
      "Sid": "AWSCloudTrailAclCheck20150319"
    },
    {
      "Action": "s3:PutObject",
      "Condition": {
        "StringEquals": {
          "s3:x-amz-acl": "bucket-owner-full-control"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudtrail.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::oper-trace-log/AWSLogs/610695744462/*",
      "Sid": "AWSCloudTrailWrite20150319"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_s3_bucket_policy" "yawnpanda--co" {
  bucket = "yawnpanda.co"

  policy = <<POLICY
{
  "Id": "Policy1481715512693",
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Condition": {
        "IpAddress": {
          "aws:SourceIp": "121.130.189.196"
        }
      },
      "Effect": "Deny",
      "Principal": "*",
      "Resource": "arn:aws:s3:::yawnpanda.co/*",
      "Sid": "Stmt1481715511390"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

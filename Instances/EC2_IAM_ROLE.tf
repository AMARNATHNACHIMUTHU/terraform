resource "aws_iam_role" "ec2_iam_role" {
  name = "EC2-IAM-ROLE"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow"
      "Principal": {
        "Service": ["ec2.amazonaws.com", "application-autoscaling.amazonaws.com"]
      },
      "Action": "sts:AssumeRole",
    }
  ]
}
EOF
  tags = {
    tag-key = "EC2-IAM-Role"
  }
}

resource "aws_iam_role_policy" "ec2_iam_role_policy" {
  name = "EC2-IAM-policy"
  role = "${aws_iam_role.ec2_iam_role.id}"

  policy = <<-EOF
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Action": [
          "ec2:*",
          "elasticloadbalancing.*",
          "cloudwatch.*",
          "logs.*"
        ],
        "Effect": "Allow",
        "Resource": "*"
      }
    ]
  }
  EOF
  tags = {
    tag-key = "EC2-IAM-Policy"
  }
}

resource "aws_iam_instance_profile" "ec2_iam_instance_policy" {
  name = "EC2-IAM-Instance-Policy"
  role = "${aws_iam_role.ec2_iam_role.name}"

  tags = {
    tag-key = "EC2-IAM-Instance-Policy"
  }
}
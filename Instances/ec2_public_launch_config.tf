resource "aws_launch_configuration" "ec2_public_launch_configuration" {
  image_id                    = "ami-0dad359ff462124ca"
  instance_type               = "${var.ec2_instance_type}"
  key_name                    = "${var.key_pair_name}"
  associate_public_ip_address = true
  iam_instance_profile        = "${aws_iam_instance_profile.ec2_instance_profile.name}"
  security_groups             = ["${aws_security_group.ec2_public_security_group.id}"]

  user_data = <<EOF
    #!/bin/bash
    yum update -y
    yum install httpd -y
    service httpd start
    chkconfig httpd on
    export INSTANCE_ID=$(curl http://169.254.169.254/latest/meta-data/instance-id)
    echo "<html><body><h1>Hello from Development Web App at instance <b>"$INSTANCE_ID"</b></h1></body></html>" > /var/www/html/index.html
  EOF
}
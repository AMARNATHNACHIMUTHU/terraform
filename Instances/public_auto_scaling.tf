resource "aws_autoscaling_group" "ec2_public_autoscaling_group" {
  name                  = "Production-WebApp-AutoScalingGroup"
  vpc_zone_identifier   = [
    "subnet-08e72702e331b566a",
    "subnet-035f1b46d359c0c45",
    "subnet-0585f401c7212941a"
  ]
  max_size              = "${var.max_instance_size}"
  min_size              = "${var.min_instance_size}"
  launch_configuration  = "${aws_launch_configuration.ec2_public_launch_configuration.name}"
  health_check_type     = "ELB"
  load_balancers        = ["${aws_elb.webapp_load_balancer.name}"]

  tag {
    key                 = "Name"
    propagate_at_launch = false
    value               = "WebApp-EC2-Instance"
  }

  tag {
    key                 = "Type"
    propagate_at_launch = false
    value               = "WebApp"
  }
}
resource "aws_autoscaling_policy" "webapp_production_scaling_policy" {
  autoscaling_group_name    = "${aws_autoscaling_group.ec2_public_autoscaling_group.name}"
  name                      = "Production-WebApp-AutoScaling-Policy"
  policy_type               = "TargetTrackingScaling"
  min_adjustment_magnitude  = 1

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 80.0
  }
}


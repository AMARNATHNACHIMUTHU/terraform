resource "aws_autoscaling_group" "ec2_private_autoscaling_group" {
  name                = "Production-Backend-AutoScalingGroup"
  vpc_zone_identifier = [
    "subnet-065f337751cbad79f",
    "subnet-05bf971e701f456b8",
    "subnet-05f8584cdc2d9c7db"
  ]
  max_size              = "${var.max_instance_size}"
  min_size              = "${var.min_instance_size}"
  launch_configuration  = "${aws_launch_configuration.ec2_private_launch_configuration.name}"
  health_check_type     = "ELB"
  load_balancers        = ["${aws_elb.backend_load_balancer.name}"]

  tag {
    key                 = "Name"
    propagate_at_launch = false
    value               = "Private-EC2-Instance"
  }

  tag {
    key                 = "Type"
    propagate_at_launch = false
    value               = "Backend"
  }
}

resource "aws_autoscaling_policy" "backend_production_scaling_policy" {
  autoscaling_group_name    = "${aws_autoscaling_group.ec2_private_autoscaling_group.name}"
  name                      = "Production-Backend-AutoScaling-Policy"
  policy_type               = "TargetTrackingScaling"
  min_adjustment_magnitude  = 1

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 80.0
  }
}
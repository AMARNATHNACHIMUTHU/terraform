resource "aws_elb" "webapp_load_balancer" {
  name            = "Production-WebApp-LoadBalancer"
  internal        = false
  security_groups = ["${aws_security_group.elb_security_group.id}"]
  subnets = [
    "subnet-08e72702e331b566a",
    "subnet-035f1b46d359c0c45",
    "subnet-0585f401c7212941a"
  ]
  listener {
    instance_port = 80
    instance_protocol = "HTTP"
    lb_port = 80
    lb_protocol = "HTTP"
  }

  health_check {
    healthy_threshold   = 5
    interval            = 30
    target              = "HTTP:80/index.html"
    timeout             = 10
    unhealthy_threshold = 5
  }
}
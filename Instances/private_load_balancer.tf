resource "aws_elb" "backend_load_balancer" {
  name            = "Production-Backend-LoadBalancer"
  internal        = true
  security_groups = ["${aws_security_group.elb_security_group.id}"]
  subnets = [
    "subnet-065f337751cbad79f",
    "subnet-05bf971e701f456b8",
    "subnet-05f8584cdc2d9c7db"
  ]

  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }

  health_check {
    healthy_threshold   = 5
    interval            = 30
    target              = "HTTP:80/index.html"
    timeout             = 10
    unhealthy_threshold = 5
  }
}

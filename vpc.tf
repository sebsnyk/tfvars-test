resource "aws_security_group_rule" "ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = local.test == 0 ? [var.remote_user_addr] : ["11.0.0.0/24"]
  security_group_id = aws_security_group.allow.id
}

locals {
  # setting this to 0 will cause a security vulnerability, setting it to 1 will remove it
  test = 0
}

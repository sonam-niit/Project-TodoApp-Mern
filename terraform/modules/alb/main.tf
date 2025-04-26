resource "aws_lb" "this" {
  name               = "backend-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.security_group_id]
  subnets            = var.subnet_ids
}
resource "aws_lb_target_group" "this" {
    name     = "backend-tg"
    port     = 5000
    protocol = "HTTP"
    vpc_id   = var.vpc_id
    target_type = "instance"
    health_check {
        healthy_threshold   = 2
        interval            = 30
        timeout             = 5
        port = "5000"
        path = "/"
    }
}
resource "aws_lb_listener" "http" {
    load_balancer_arn = aws_lb.this.arn
    port              = 80
    protocol          = "HTTP"
    
    default_action {
        type = "forward"
        target_group_arn = aws_lb_target_group.this.arn
    }
}
resource "aws_lb_target_group_attachment" "this" {
    count = length(var.instnce_ids)
    target_group_arn = aws_lb_target_group.this.arn
    target_id = var.instnce_ids[count.index]
    port = 5000
  
}
output "alb_dns" {
  value = module.alb.alb_dns_name
  description = "The DNS name of the ALB"
}
output "ansible_inventory" {
  value = join("\n", formatlist("%s ansible_host=%s", module.ec2.instance_ips, module.ec2.usernames))
}
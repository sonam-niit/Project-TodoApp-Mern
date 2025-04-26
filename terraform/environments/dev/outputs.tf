output "alb_dns" {
  value = module.alb.alb_dns_name
  description = "The DNS name of the ALB"
}
output "ansible_inventory" {
  value = join("\n", formatlist("%s ansible_host=%s", module.ec2.instance_ips, module.ec2.instance_ips))
}
output "ansible_inventory_yaml" {
  value = yamlencode({
    all = {
      hosts = {
        for idx, ip in module.ec2.instance_ips : "backend${idx + 1}" => {
          ansible_host                  = ip
          ansible_user                  = "ubuntu"
          ansible_ssh_private_key_file  = "todo-app.pem"
        }
      }
      children = {
        backend = {
          hosts = {
            for idx, ip in module.ec2.instance_ips : "backend${idx + 1}" => {}
          }
        }
      }
    }
  })
}

resource "aws_instance" "expense" {
    for_each = var.instances # this variable is map
    # for_each will give us a special variable with name each
    ami = var.ami # this AMI ID may change over the time
    instance_type = each.value
    vpc_security_group_ids = var.sg_id
    tags = {
        Name = each.key
    }
    provisioner "local-exec" {
    command = "echo The server's IP address is ${self.private_ip}  > private.ip"
  }
}


resource "aws_instance" "example" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install -y nginx",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      user        = "centos"  # Change based on the AMI you're using
      private_key = "file.txt"  # Path to your private key
      host        = self.public_ip
    }
  }
}

output "public" {
  value = aws_instance.example.public_ip
}
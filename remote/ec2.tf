resource "aws_instance" "example" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx"
    ]

    connection {
      type        = "ssh"
      user        = "centos"  # Change based on the AMI you're using
      private_key = "file.txt"  # Path to your private key
      host        = self.public_ip
    }
  }
}

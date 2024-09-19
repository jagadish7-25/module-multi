resource "aws_instance" "example" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo public ip is ${aws_instance.example.public_ip}"
  }
}
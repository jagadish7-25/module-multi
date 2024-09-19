variable "instances" {
  default = {
    frontend = "t2.micro"
    backend = "t2.micro"
    mysql = "t3.micro"
    payment = "t2.micro"
  }
}
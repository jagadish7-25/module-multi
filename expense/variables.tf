variable "instances" {
    default = {
        frontend = "t2.micro"
        backend = "t2.micro"
        mysql = "t3.micro"
    }
  
}

variable "ami" {
    type = string
    default = "ami-0b4f379183e5706b9"
  
}

variable "sg_id" {
    
    default = ["sg-09c956a01686bdc1d"]
  
}
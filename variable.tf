variable "vpc_cidr"{
  default = "10.0.0.0/16"
}

variable "vpc_cidr2"{
  default = "172.16.0.0/24"
}

variable "aws_amis" {
  default = "ami-09558250a3419e7d0"
}

variable "vm_type" {
  default = "t2.micro"
}



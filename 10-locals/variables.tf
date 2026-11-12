variable "ami_id" {
  type        = string
  default     = "ami-0b3624e0b2e05fafb"
  description = "The AMI ID to use for the EC2 instance"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "The instance type for the EC2 instance"
}

variable "project" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "ec2-tags" {
  default = {
    Name = "roboshop-dev"
  }
}

variable "cidr" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "from_port" {
  type    = number
  default = 0
}

variable "to_port" {
  type    = number
  default = 0
}

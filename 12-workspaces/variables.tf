variable "instance_type" {
  type = map(any)
  default = {
    dev  = "t3.micro"
    uat  = "t3.small"
    prod = "t3.medium"
  }
}

variable "ec2_tags" {
  type = map(any)
  default = {
    Name        = "roboshop-workspaces-demo"
    Environment = "dev"
    Terraform   = "true"
    Project     = "roboshop"
  }
  description = "The tags for the EC2 instance"
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

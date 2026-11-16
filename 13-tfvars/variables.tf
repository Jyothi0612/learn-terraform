variable "instance_type" {
  type = string
}

variable "environment" {
  type = string
}

variable "ec2_tags" {
  type = map(any)
  default = {
    Name        = "roboshop-tfvars-demo"
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

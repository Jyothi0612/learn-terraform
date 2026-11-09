variable "ami_id" {
  type = string
  #default     = "ami-0b3624e0b2e05fafb"
  description = "The AMI ID to use for the EC2 instance"
}

variable "instance_type" {
  type = string
  #default     = "t3.micro"
  description = "The instance type for the EC2 instance"

  validation {
    condition     = contains(["t3.small", "t3.micro", "t3.medium", "t3.large"], var.instance_type)
    error_message = "The instance type must be one of: t3.small, t3.micro, t3.medium, t3.large"
  }
}

variable "ec2_tags" {
  type = map(any)
  default = {
    Name        = "roboshop-mongodb"
    Environment = "dev"
    Terraform   = "true"
    Project     = "roboshop"
    component   = "mongodb"
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

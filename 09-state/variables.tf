variable "instance_type" {
  type        = string
  default     = "t3.small"
  description = "The instance type for the EC2 instance"

  validation {
    condition     = contains(["t3.small", "t3.micro", "t3.medium", "t3.large"], var.instance_type)
    error_message = "The instance type must be one of: t3.small, t3.micro, t3.medium, t3.large"
  }
}

variable "ec2_tags" {
  type = map(any)
  default = {
    Name        = "roboshop-remote-state-demo-1"
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

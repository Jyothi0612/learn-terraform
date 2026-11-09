variable "environment" {
  default = "dev"
}

variable "project" {
  default = "roboshop"
}

variable "ami_id" {
  type        = string
  default     = "ami-0b3624e0b2e05fafb"
  description = "The AMI ID to use for the EC2 instance"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "The instance type for the EC2 instance"

  validation {
    condition     = contains(["t3.small", "t3.micro", "t3.medium", "t3.large"], var.instance_type)
    error_message = "The instance type must be one of: t3.small, t3.micro, t3.medium, t3.large"
  }
}

variable "instances" {
  type = map(any)
  default = {
    mongodb = {
      instance_type = "t3.micro"
      port_no       = 27017
    },
    redis = {
      instance_type = "t3.micro"
      port_no       = 6379
    },
    mysql = {
      instance_type = "t3.micro"
      port_no       = 3306
    },
    rabbitmq = {
      instance_type = "t3.micro"
      port_no       = 5672
    },
    catalogue = {
      instance_type = "t3.micro"
      port_no       = 8080
    },
    user = {
      instance_type = "t3.micro"
      port_no       = 8080
    },
    cart = {
      instance_type = "t3.micro"
      port_no       = 8080
    },
    shipping = {
      instance_type = "t3.micro"
      port_no       = 8080
    },
    payment = {
      instance_type = "t3.micro"
      port_no       = 8080
    },
    frontend = {
      instance_type = "t3.micro"
      port_no       = 80
    }
  }
}

variable "zone_id" {
  default = "Z0191431ICNDXLGEQZCB"
}

variable "domain_name" {
  default = "agenticengg.online"
}

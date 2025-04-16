variable "aws_region" {
  default = "us-east-1"  
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami_id" {
  description = "Ubuntu AMI"
  default     = "ami-053b0d53c279acc90"
}

variable "key_name" {
  description = "Your AWS EC2 key pair name"
  default     = "strapi-key" 
}

variable "allowed_ip" {
  description = "Allowed IP CIDR for SSH and Strapi access"
  default     = "0.0.0.0/0"
}

resource "aws_security_group" "strapi_sg" {
  name        = "strapi-sg-"
  description = "Allow SSH and Strapi ports"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ip]
  }

  ingress {
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "aws_vpc" "default" {
  default = true
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "strapi" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install -y curl git
              curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
              sudo apt install -y nodejs
              sudo npm install -g yarn pm2

              git clone https://github.com/shashibabu123/strapi-demo.git
              cd strapi-demo
              yarn install
              yarn build
              pm2 start yarn --name strapi -- develop
              EOF

  tags = {
    Name = "StrapiServer"
  }
}

# main.tf
provider "aws" {
  region = "us-east-1" # Замените на нужный регион
}

# 1. Создание VPC (если не используется существующий)
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "main-vpc"
  }
}

# 1.1 Создание Public подсети
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a" 
  map_public_ip_on_launch = true 
  tags = {
    Name = "public-subnet"
  }
}

# 1.2 Создание Private подсети
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a" 
  tags = {
    Name = "private-subnet"
  }
}

# 2.1 Создание ВМ в Public подсети
resource "aws_instance" "public_vm" {
  ami           = "ami-0abcdef1234567890" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  tags = {
    Name = "public-vm"
  }
}

# 2.2 Создание ВМ в Private подсети
resource "aws_instance" "private_vm" {
  ami           = "ami-0abcdef1234567890" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private.id
  tags = {
    Name = "private-vm"
  }
}

resource "aws_vpc" "training_network" {
  cidr_block = "10.10.0.0/16"

  tags = {
    Name    = "terraform-training-vpc"
    Project = "terraform-day8"
  }
}

resource "aws_subnet" "training_subnet" {
  vpc_id     = aws_vpc.training_network.id
  cidr_block = "10.10.1.0/24"

  tags = {
    Name    = "terraform-training-subnet"
    Project = "terraform-day8"
  }
}

resource "aws_security_group" "training_firewall" {
  name        = "terraform-training-sg"
  description = "Security group for Terraform training"
  vpc_id      = aws_vpc.training_network.id

  tags = {
    Name    = "terraform-training-sg"
    Project = "terraform-day8"
  }
}

resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = var.ec2_tags
}

resource "aws_security_group" "allow_all" {
  name   = var.sg_name

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = var.cidr
  }

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

  tags = {
    Name = "allow-all"
  }

}







# resource "aws_instance" "terraform" {
#     ami = "ami-09c813fb71547fc4f"
#     instance_type = "t3.micro"
#     vpc_security_group_ids = [aws_security_group.allow_all.id]
#     tags = {
#         Name = "terraform"
#         Terraform = "true"
#     }
# }

# resource "aws_security_group" "allow_all" {
#   name   = "allow-all"

#   egress {
#     from_port        = 0 # from port 0 to to port 0 means all ports
#     to_port          = 0 
#     protocol         = "-1" # -1 means all protocols
#     cidr_blocks      = ["0.0.0.0/0"] # internet
#   }

#   ingress {
#     from_port        = 0 # from port 0 to to port 0 means all ports
#     to_port          = 0 
#     protocol         = "-1" # -1 means all protocols
#     cidr_blocks      = ["0.0.0.0/0"] # internet
#   }

#   tags = {
#     Name = "allow-all"
#   }

# }
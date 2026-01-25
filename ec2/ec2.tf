resource "aws_instance" "terraform" {
<<<<<<< HEAD
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
        Name = "terraform"             # map or object
=======
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
        Name = "terraform"
>>>>>>> d7ee34758dc1bef9686702e623e77d01e2e814bf
        Terraform = "true"
    }
}

<<<<<<< HEAD
resource "aws_security_group" "allow-all" {
  name   = "allow-all"

  egress {
    from_port        = 0              # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1"           # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"]  # internet
  }

  ingress {
    from_port        = 0              # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1"           # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"]  # internet
=======
resource "aws_security_group" "allow_all" {
  name   = "allow-all"

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
>>>>>>> d7ee34758dc1bef9686702e623e77d01e2e814bf
  }

  tags = {
    Name = "allow-all"
  }

}
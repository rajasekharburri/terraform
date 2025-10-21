data "aws_ami" "joindevops" {
    owners           = ["973714476881"]
    most_recent      = true
    
    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

output "ami_id" {
    value = data.aws_ami.joindevops.id
}

data "aws_instance" "terraform" {
    instance_id = "i-0286359b6056d2f13"
}

output "terraform_info" {
    value = data.aws_instance.terraform  #to find all info
}

# output "terraform_info" {
#     value = data.aws_instance.terraform.public_ip  # to find public ip
# }
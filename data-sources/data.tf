data "aws_ami" "joindevops" {
    owners           = ["973714476881"]  ## ec2>AMIs>owner account id
    most_recent      = true  #latest ami will take
    
    filter {
        name   = "name"
        values = ["Redhat-9-DevOps-Practice"]
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

# aws instances data source

data "aws_instance" "terraform" {
    instance_id = "i-0286359b6056d2f13"
}

output "terraform_info" {
    value = data.aws_instance.terraform  #to find all info
}

output "terraform_info" {
    value = data.aws_instance.terraform.public_ip  # to find public ip
}
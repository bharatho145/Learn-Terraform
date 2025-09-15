

data "aws_ami" "amazon-linux-2" {
    most_recent = true
    owners = ["amazon"]
    filter {
        name = "name"
        #values = ["amzn2-ami-hvm*"]
        values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    }

}

output "amazon_linux_2_ami_id" {
  value = "${data.aws_ami.amazon-linux-2.id}"
}

resource aws_instance "my_instance" {
    ami = "${data.aws_ami.amazon-linux-2.id}"
    instance_type = "t2.micro"
}

# VPC

#disable public IP 

# Attach another EBS Disk

# Key Pair

# Instance profile

# Security group

# Tags

# User Data
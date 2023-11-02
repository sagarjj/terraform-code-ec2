provider "aws" {
    region = var.region
}
resource "aws_instance" "inst" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key
    count = 2
    security_groups = ["sg-077b70f9a05d0fdeb"]
    tags = {
        "Name" = "EC2-${count.index}"
    }
}
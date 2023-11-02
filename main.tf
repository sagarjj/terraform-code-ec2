provider "aws" {
    region = var.region
}
resource "aws_instance" "inst" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key
    count = 1
    tags = {
        "Name" = "EC2-demo"
    }
}

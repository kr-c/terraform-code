
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }

}
resource "aws_instance" "myec2-us" {
    ami = data.aws_ami.amazon_linux.id
    instance_type = lookup (var.instancetype, terraform.workspace)
}

/*
resource "aws_instance" "myec2-mumbai" {

  provider = "aws.mumbai"
}
*/
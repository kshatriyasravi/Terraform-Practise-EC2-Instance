# Here we are creating the key for the unbuntu machine which we are creating in terraform
resource "aws_key_pair" "my-ubuntu-key" {
  key_name = "my-ubuntu-key"
  public_key = file("~/.ssh/id_ed25519.pub")
  #public_key = file("C:\\Users\\ravsekar\\awsterraform\\ec2-instance\\Terraform-Practise-EC2-Instance\\my-ubuntu-key.pub")

}
output "aws_key_pair-output" {
  value = aws_key_pair.my-ubuntu-key
}
# Here we are creating the aws ec2-instance with the pre-requisites which defined in readme.md file
resource "aws_instance" "myinstance" {
  # this is the default ami id for ubuntu "OS"
  ami = "ami-0d5d9d301c853a04a"
  # this is the default instance type for ec2 "SIZE"
  instance_type = "t2.micro"
  # this is the key pair which we created in the below step and trying to associate the key pair with ec2-instance
  key_name = aws_key_pair.my-ubuntu-key.key_name
}
output "aws_instance-output" {
  value = aws_instance.myinstance.id
}
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}
output "aws_vpc-output" {
  value = aws_vpc.myvpc
}
resource "aws_subnet" "name" {
  cidr_block = "10.0.1.0/24"
  vpc_id     = aws_vpc.myvpc.id
}
output "aws_subnet-output" {
  value = aws_subnet.name
}
resource "aws_security_group" "mysecurity-aws_security_group" {
  name        = "mysecurity-aws_security_group"
  description = "Allow inbound traffic on port 22"
  vpc_id      = aws_vpc.myvpc.id
}

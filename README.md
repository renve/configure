This repo is to build an AMI using packer. After the AMI is built and configured using salt, it will be started using terraform. Create a packer-vars file and input the following info:
{
  "aws_access_key": "your-aws-access-key",
  "aws_secret_key": "your-aws-secret-key",
  "source_ami": "ami-id-you-want-to-use",
  "vpc_id": "your-vpc-id",
  "subnet_id": "your-subnet-id"
}

vpc and subnet ID are required if you're not using the default VPC. I also had to put the associate_public_ip_address because by default unless it's the default VPC, they don't assign you a public IP to SSH into the instance and the build will fail. 


***This is a work in progress repo***

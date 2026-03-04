# Find the latest AMI for Ubuntu 24.04
data "aws_ami" "ubuntu24" {
  most_recent = true
  owners      = ["099720109477"]
  name_regex  = "ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"
 
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
 
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
 
  filter {
    name   = "block-device-mapping.volume-type"
    values = ["gp3"]
  }
}
resource "aws_instance" "learning" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.nano"
  count         = "1"
  tags = {
    Name = "sushmasBlogExample"
  }
}

resource "aws_instance" "terraform" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.nano"
  count         = "1"
  tags = {
    Name = "terraform"
  }

    root_block_device {
    volume_size           = "20"
    volume_type           = "gp2"
    delete_on_termination = true
  }

    ebs_block_device {
    device_name           = "/dev/xvda"
    volume_size           = "50"
    volume_type           = "gp2"
    encrypted             = true
    delete_on_termination = true
  }
}

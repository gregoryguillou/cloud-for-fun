data "aws_ami" "fedora" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Fedora-Cloud-Base-29-*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "block-device-mapping.volume-type"
    values = ["gp2"]
  }

  owners = ["125523088429"]
}


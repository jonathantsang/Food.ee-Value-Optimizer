provider "aws" {
  region     = "${var.region}"
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config {
    region = "${var.region}"
    dynamodb_table = "jtsang-table-vpc"
    bucket = "${var.bucket_name}"
    key = "terraform-vpc.tfstate"
  }
}

resource "aws_instance" "example" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  subnet_id = "${data.terraform_remote_state.vpc.public_subnet_id}"
  iam_instance_profile = "${var.iam_instance_profile}"
  user_data = "${file("${path.module}/user_data.sh")}"
  tags = {
    Name = "server"
  }
  availability_zone = "us-west-2a"
  source_dest_check = false
  vpc_security_group_ids = [
  "****"
  ]
}

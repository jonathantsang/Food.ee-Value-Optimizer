variable "initial_template" {
  description = "Name of the init script being templated by Terraform"
  default = "initial_template.j2"
}

variable "terraform_template_name" {
  description = "Name of the init script being templated by Ansible"
  default = "terraform_template.j2"
}

variable "user_data_template" {
  description = "Name of the user_data file being templated by Terraform"
  default = "user_data_template.j2"
}

variable "user_data_name" {
  description = "Name of the user_data file being templated by Ansible"
  default = "user_data.sh"
}

variable "region" {
  description = "Region"
  default = "us-west-2"
}

variable "bucket_name" {
  default = "****"
}

variable "ami" {
  default = "ami-005bdb005fb00e791"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "***"
}

variable "iam_instance_profile" {
  default = "***"
}

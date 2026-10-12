variable "instance_name" {
  type        = string
  description = "The identifying name for the new EC2 instance"
}

variable "instance_ami" {
  type        = string
  description = "The custom AWS AMI ID generated from the original instance"
}

variable "instance_type" {
  type        = string
  description = "The EC2 instance type size (e.g., t3.micro)"
  default     = "t3.micro"
}

variable "subnet_id" {
  type        = string
  description = "The AWS Subnet ID where the clone instance will be deployed"
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of AWS Security Group IDs to associate with the clone instance"
}

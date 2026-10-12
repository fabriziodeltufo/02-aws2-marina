# Creation of the new EC2 clone instance starting from the custom AMI image
resource "aws_instance" "aws2_marina" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = var.instance_name
  }
}

# Output of the new instance ID
output "aws2_marina_instance_id" {
  value       = aws_instance.aws2_marina.id
  description = "The ID of the newly created EC2 clone instance"
}

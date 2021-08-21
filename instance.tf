resource "aws_instance" "The-Empire-Basic" {
	ami = var.AMIS[var.AWS_REGION]
	instance_type = "t2.micro"
	key_name = "dp-scarif"
	tags = {
		Name = "The Empire - DP Terraform Test"
	} 
	
	provisioner "local-exec" { 
		command = "echo 'this is a test'"
	}
}

resource "aws_security_group" "allow_traffic" {
	name = "death_ssh_traffic"
	description = "allow traffic from ssh"
	ingress {
		description = "SSH"
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["69.216.99.86/32"]
	}
	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
	tags = {
		Name = "Allow SSH"
	}
	
}

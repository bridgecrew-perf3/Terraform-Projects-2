resource "aws_instance" "The-Empire-Basic" {
	ami = var.AMIS[var.AWS_REGION]
	instance_type = "t2.micro"
	key_name = "dp-scarif"
	tags = {
		Name = "The Empire - DP Terraform Test"
	} 
}

resource "aws_instance" "The-Empire-Basic" {
	provisioner "local-exec" { 
		command = "echo 'this is a test'"
	}	
}

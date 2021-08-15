variable "AWS_ACCESS_KEY" {
	description = "should be accessing my .tfvars file"
}

variable "AWS_SECRET_KEY" {
	description = "should be accessing my .tfvars file"
}

variable "AWS_REGION" {
	default = "us-west-1"
}

variable "AMIS" {
	type = map(string)
	default = {
		us-east-1 = "ami-0b75998a97c952252"
		us-west-1 = "ami-031b673f443c2172c"
	}
}

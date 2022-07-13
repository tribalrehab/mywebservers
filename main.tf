variable aws_access_key_id{}
variable aws_secret_access_key{}

provider "aws" {
	region="us-east-1"
	access_key = var.aws_access_key_id
	secret_key = var.aws_secret_access_key
}

resource "aws_instance" "mywebserver" {
	ami = "ami-0cff7528ff583bf9a"
	instance_type = "t2.micro"
	count = 3
	
	tags = {
		Name = "mywebserver"
	}
}

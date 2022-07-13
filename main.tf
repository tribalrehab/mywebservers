variable aws_acces_key_id{}
variable aws_secret_access_key{}

provider "aws" {
	profile="default"
	region="us-east-1"
}

resource "aws_instance" "mywebserver" {
	ami = "ami-0cff7528ff583bf9a"
	instance_type = "t2.micro"
	count = 3
	
	tags = {
		Name = "mywebserver"
	}
}

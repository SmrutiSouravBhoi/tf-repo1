provider "aws" {
	 region = "ap-southeast-1"
}

terraform { 
	  backend "s3" {
		  bucket = "tf-test-new-bucket"
		  key = "terraform.tfstate"
		  region = "ap-southeast-1"
	}
}

resource "aws_instance" "tf_inst" {
	 subnet_id = "subnet-0cbe47c544196eeeb"
	 ami = "ami-002843b0a9e09324a"
	 instance_type = "t2.micro"
	 tags = {
		 Name = "new_bucket_inst"
}

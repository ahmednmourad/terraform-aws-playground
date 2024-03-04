data "aws_caller_identity" "current" {}

module "terraform_s3_state" {
  source = "./modules/terraform-s3-state"

  bucket_name = "terraform-remote-state-bucket-${data.aws_caller_identity.current.account_id}"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0a23a9827c6dab833"
  instance_type = "t2.micro"

  tags = {
    Environment = "dev"
    Name        = "ExampleAppServerInstance"
  }
}

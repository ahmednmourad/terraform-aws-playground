resource "aws_instance" "app_server" {
  ami           = "ami-0a23a9827c6dab833"
  instance_type = "t2.micro"

  tags = {
    Environment = "dev"
    Name        = "ExampleAppServerInstance"
  }
}

resource "aws_instance" "example" {
  ami = "ami-07062e2a343acc423"
  instance_type = "t2.micro"
  subnet_id = "subnet-0f201fd5ad1b2a6da"
}

# resource "aws_s3_bucket" "example" {
#   bucket = "backend-bucket-jatin123"
# }
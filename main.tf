terraform {
  backend "s3" {
    bucket = "terraformbucket63"
    key    = "terraform_state1"
    region = "us-east-2"
  }
}

module "dev_server" {
  source = "./modules/dev-instance"

  #ami = var.instance_ami
  instance_type = "t2.micro"

  #tags = var.tags
}

module "qa_server" {
  source = "./modules/qa-instance"

  #ami = var.instance_ami
  instance_type = "t2.micro"

  #tags = var.tags
}
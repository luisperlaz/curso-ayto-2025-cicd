terraform {
  backend "s3" {
    bucket  = "ayto-zgz-tfstate.training.aws"
    key     = "luis.perez"
    region  = "us-west-1"
    encrypt = true
  }
}

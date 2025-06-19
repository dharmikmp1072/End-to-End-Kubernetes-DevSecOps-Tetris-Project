terraform {
  backend "s3" {
    bucket       = "my-project-bucket135"
    region       = "us-east-2"
    key          = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/Jenkins-Server-TF/terraform.tfstate"
    use_lockfile = true
    encrypt      = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }

provider "aws" {
  region = "ap-northeast-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  cloud {
    organization = "ECSOrg"

    workspaces {
      name = "Test-Armageddon-Workspace"
    }
  }
}

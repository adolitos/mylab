terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = ">= 1.1.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "landing" {
  bucket = "das-landing-zone"
}

resource "aws_glue_catalog_database" "aws_glue_catalog_database" {
  name = "spotify"
}

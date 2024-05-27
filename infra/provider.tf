terraform {
  backend "remote" {
    hostname     = "https://app.terraform.io/"
    organization = "cloud_republic"  
    workspaces  {
        name = "gcp_platform"
      }

    token = "$TF_CLOUD_TOKEN"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.6.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 5.6.0"
    }
  }
}
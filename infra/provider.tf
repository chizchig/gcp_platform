terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "the_hub"  # Ensure this is the correct organization name
    workspace = {
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
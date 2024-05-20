terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "gcp_hub"  # Ensure this is the correct organization name
    workspaces {
      name = "gcp_platform"
    }
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

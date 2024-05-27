terraform {
  backend "remote" {
    hostname     = "https://app.terraform.io/auth/62278aea-3702-47c3-831d-fbfaef79ebbb/callback"
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
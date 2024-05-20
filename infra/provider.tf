terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "gcp_hub"
    workspaces {
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

provider "google" {
  credentials = file("my-key.json")
  project     = var.google_cloud_project_id
  region      = "us-cental1"
}

provider "google-beta" {
  credentials = file("my-key.json")
  project     = var.google_cloud_project_id
  region      = "us-cental1"
}
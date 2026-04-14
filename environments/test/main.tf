terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "bucket" {
  name          = "${var.project_id}-test-bucket"
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = true
}

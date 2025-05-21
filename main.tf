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

# Create a storage bucket for the website
resource "google_storage_bucket" "website_bucket" {
  name          = var.bucket_name
  location      = var.region
  force_destroy = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "index.html"
  }

  uniform_bucket_level_access = true
}

# Make the bucket public
resource "google_storage_bucket_iam_member" "public_read" {
  bucket = google_storage_bucket.website_bucket.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}

# Upload website files to the bucket
resource "google_storage_bucket_object" "index" {
  name    = "index.html"
  source  = "index.html"
  bucket  = google_storage_bucket.website_bucket.name
  content_type = "text/html"
}

resource "google_storage_bucket_object" "styles" {
  name    = "styles.css"
  source  = "styles.css"
  bucket  = google_storage_bucket.website_bucket.name
  content_type = "text/css"
} 
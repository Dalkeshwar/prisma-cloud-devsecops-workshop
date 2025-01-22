provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "14167d800ed877a7f92d68926fd3ad3b47447a72"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-22 18:46:48"
    git_last_modified_by = "120374152+Dalkeshwar@users.noreply.github.com"
    git_modifiers        = "120374152+Dalkeshwar"
    git_org              = "Dalkeshwar"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "a74f7bad-b184-4a92-9dff-21a3ee5fed8b"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

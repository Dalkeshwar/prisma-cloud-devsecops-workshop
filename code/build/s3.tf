provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "8aaab7dc61f8e1bf4334377c7edd12be7ce50ce9"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-22 18:35:49"
    git_last_modified_by = "120374152+Dalkeshwar@users.noreply.github.com"
    git_modifiers        = "120374152+Dalkeshwar"
    git_org              = "Dalkeshwar"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "35fa4f6a-c881-4270-a7b0-72b16bd6717d"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

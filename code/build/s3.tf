provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "9bdafcaf0c264dfc7d88c069e75cde1f52bf18ae"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-22 18:19:26"
    git_last_modified_by = "120374152+Dalkeshwar@users.noreply.github.com"
    git_modifiers        = "120374152+Dalkeshwar"
    git_org              = "Dalkeshwar"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "fa5ae268-45a1-4948-94c3-b4f9aa3e0215"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

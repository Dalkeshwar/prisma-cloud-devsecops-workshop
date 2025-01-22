provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "05a41fce843df2748ba363355615e46752f827dd"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-22 18:51:59"
    git_last_modified_by = "120374152+Dalkeshwar@users.noreply.github.com"
    git_modifiers        = "120374152+Dalkeshwar"
    git_org              = "Dalkeshwar"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "5fe6ab02-35ea-4389-a704-dab9c6ea61b4"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

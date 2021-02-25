resource "aws_s3_bucket" "templates" {
  bucket = "stability-template-bucket"
  acl    = "private"

  tags = {
    Name        = "Templates and Stacks"
    Environment = "Dev"
  }
  versioning {
    enabled = true
  }
}
resource "aws_s3_bucket" "logs" {
  bucket = "stability-logs-bucket"
  acl    = "private"

  tags = {
    Name        = "Log Data"
    Environment = "Dev"
  }
  versioning {
    enabled = false
  }

}
resource "aws_s3_bucket" "monitor" {
  bucket = "monitor"
  acl    = "private"

  tags = {
    Name        = "Monitoring Data"
    Environment = "Dev"
  }
  versioning {
    enabled = false
  }
}
resource "aws_s3_bucket" "lab-result" {
  bucket = "lab-result"
  acl    = "private"

  tags = {
    Name        = "Lab Results"
    Environment = "Dev"
  }
  versioning {
    enabled = false
  }
}

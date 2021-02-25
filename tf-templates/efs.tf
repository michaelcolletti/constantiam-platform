resource "aws_efs_file_system" "data" {
  creation_token = "datamount"
  encrypted      = "true"

  tags = {
    Name        = "data-mount"
    Environment = "Dev"
  }
}
resource "aws_efs_file_system" "tools" {
  creation_token = "tools"
  encrypted      = "true"

  tags = {
    Name        = "tools-mount"
    Environment = "Dev"
  }
}
resource "aws_efs_file_system" "logs" {
  creation_token = "logsmount"
  encrypted      = "true"

  tags = {
    Name        = "logs-mount"
    Environment = "Dev"
  }
}

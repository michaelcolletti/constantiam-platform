resource "aws_codecommit_repository" "stability-repo" {
  repository_name = "Stability Repo"
  description     = "Code Commit repo for the Stability project"
}

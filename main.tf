resource "github_repository" "profile" {
  name = var.github_username
  visibility = "public"
}


locals {
  readme = <<-EOT
  ### Hi there 👋
  #### There should be a summary here, but it's not here yet. :neckbeard:
  EOT
}

resource "github_repository_file" "file" { 
  content = local.readme
  file = "README.md"
  repository = github_repository.profile.name
}

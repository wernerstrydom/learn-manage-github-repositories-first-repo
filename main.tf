resource "github_repository" "this" {
  name                        = "example"
  description                 = "My awesome codebase"
  visibility                  = "private"
  auto_init                   = true
  archive_on_destroy          = true
}

resource "github_branch_default" "this" {
  repository = github_repository.this.name
  branch     = "main"
}



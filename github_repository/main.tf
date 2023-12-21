terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {}

resource "github_repository" "repository" {
  name         = var.name
  description  = var.description
  homepage_url = var.homepage_url
  topics       = var.topics
  visibility   = var.private ? "private" : "public"

  allow_auto_merge            = true
  allow_merge_commit          = false
  allow_rebase_merge          = false
  allow_squash_merge          = true
  allow_update_branch         = true
  delete_branch_on_merge      = true
  has_downloads               = true
  has_issues                  = true
  has_projects                = true
  has_wiki                    = true
  merge_commit_message        = "PR_BODY"
  merge_commit_title          = "PR_TITLE"
  squash_merge_commit_message = "PR_BODY"
  squash_merge_commit_title   = "PR_TITLE"
  vulnerability_alerts        = true
}

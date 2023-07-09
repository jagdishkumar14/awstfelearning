terraform {
  backend "remote" {
    organization = "awstfelearning"

    workspaces {
      name = "awstfelearning"
    }
  }
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "jake-morgan"

    workspaces {
      name = "jakemorgan-io"
    }
  }
  required_version = ">= 0.12"
}

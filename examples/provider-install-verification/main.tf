terraform {
  required_providers {
    sample = {
      source = "github.com/kawataki-yoshika/sample"
    }
  }
}

provider "sample" {}

# data "hashicups_coffees" "example" {}

output "total_price" {
  value = provider::sample::example("hello world")
}
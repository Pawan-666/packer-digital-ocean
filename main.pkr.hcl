packer {
  required_plugins {
    digitalocean = {
      version = ">= 1.0.4"
      source  = "github.com/digitalocean/digitalocean"
    }
  }
}

locals {
  timestamp = formatdate("YYYY-MM", timestamp())
}

source "digitalocean" "this" {
  api_token        = "${var.api_token}"
  droplet_name     = "${var.droplet_name}-${local.timestamp}"
  region           = "${var.region}"
  size             = "${var.size}"
  image            = "${var.image}"
  snapshot_name    = "${var.snapshot_name}-${local.timestamp}"
  snapshot_regions = "${var.snapshot_regions}"
  ssh_username     = "${var.ssh_username}"
  tags             = "${var.tags}"

}

build {
  sources = ["source.digitalocean.this"]
  provisioner "shell" {
    inline = [
      "whoami"
    ]
  }
}

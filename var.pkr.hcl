variable "api_token" {
  description = "My DO token"
  type        = string
  default     = env("DIGITALOCEAN_TOKEN")
}

variable "droplet_name" {
  description = "Ubuntu-nginx"
  type        = string
  default     = ""
}

variable "image" {
  description = "The desired image for packer"
  type        = string
  default     = "ubuntu-22-04-x64"
}


variable "region" {
  description = "Desired region"
  type        = string
  default     = "sgp1"
}

variable "size" {
  description = "Desired cpu and ram size for the droplet"
  type        = string
  default     = "s-1vcpu-1gb"
}

variable "snapshot_name" {
  description = "Name of the snapshot"
  type        = string
  default     = "packer-ubuntu-nginx"
}

variable "snapshot_regions" {
  description = ""
  type        = list(string)
  default     = ["sgp1", "blr1"]
}

variable "ssh_username" {
  description = "DO default user"
  type        = string
  default     = "root"
}

variable "tags" {
  description = "Useful tags"
  type        = list(string)
  default     = ["packer", "ubuntu-nginx", "ami"]
}



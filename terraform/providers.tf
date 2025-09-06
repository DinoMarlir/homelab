terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.2-rc04"
    }
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.52.0"
    }
  }
}
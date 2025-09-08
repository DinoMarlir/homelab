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

provider "proxmox" {
  pm_api_url          = var.pve.api_url
  pm_api_token_id     = var.pve.api_token_id
  pm_api_token_secret = var.pve.api_token_secret
  pm_tls_insecure     = var.pve.tls_insecure
}
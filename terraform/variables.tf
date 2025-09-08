variable "pve" {
  description = "Proxmox VE configuration"
  type = object({
    api_url          = string
    api_token_id     = string
    api_token_secret = string
    tls_insecure     = bool
  })
}
variable "workspace_network_option_lookup" {
  description = <<EOT
Map of workspace_network_option_lookup, attributes below
Required:
    - workspace_id
EOT

  type = map(object({
    workspace_id = number
  }))
}


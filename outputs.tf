output "workspace_network_option_lookup_network_policy_id" {
  description = "Map of network_policy_id values across all workspace_network_option_lookup, keyed the same as var.workspace_network_option_lookup except keys with no network_policy_id are omitted"
  value       = { for k, v in data.databricks_workspace_network_option.workspace_network_option_lookup : k => v.network_policy_id if v.network_policy_id != null && length(v.network_policy_id) > 0 }
}
output "workspace_network_option_lookup_workspace_id" {
  description = "Map of workspace_id values across all workspace_network_option_lookup, keyed the same as var.workspace_network_option_lookup except keys with no workspace_id are omitted"
  value       = { for k, v in data.databricks_workspace_network_option.workspace_network_option_lookup : k => v.workspace_id if v.workspace_id != null }
}


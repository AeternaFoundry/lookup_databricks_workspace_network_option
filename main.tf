data "databricks_workspace_network_option" "workspace_network_option_lookup" {
  for_each = var.workspace_network_option_lookup

  workspace_id = each.value.workspace_id
}


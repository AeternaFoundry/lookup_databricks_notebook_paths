output "notebook_paths_lookup_id" {
  description = "Map of id values across all notebook_paths_lookup, keyed the same as var.notebook_paths_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_notebook_paths.notebook_paths_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "notebook_paths_lookup_notebook_path_list" {
  description = "Map of notebook_path_list values across all notebook_paths_lookup, keyed the same as var.notebook_paths_lookup except keys with no notebook_path_list are omitted"
  value       = { for k, v in data.databricks_notebook_paths.notebook_paths_lookup : k => v.notebook_path_list if v.notebook_path_list != null && length(v.notebook_path_list) > 0 }
}
output "notebook_paths_lookup_path" {
  description = "Map of path values across all notebook_paths_lookup, keyed the same as var.notebook_paths_lookup except keys with no path are omitted"
  value       = { for k, v in data.databricks_notebook_paths.notebook_paths_lookup : k => v.path if v.path != null && length(v.path) > 0 }
}
output "notebook_paths_lookup_provider_config" {
  description = "Map of provider_config values across all notebook_paths_lookup, keyed the same as var.notebook_paths_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_notebook_paths.notebook_paths_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "notebook_paths_lookup_recursive" {
  description = "Map of recursive values across all notebook_paths_lookup, keyed the same as var.notebook_paths_lookup except keys with no recursive are omitted"
  value       = { for k, v in data.databricks_notebook_paths.notebook_paths_lookup : k => v.recursive if v.recursive != null }
}


output "devops_deploy_environments_id" {
  description = "Map of id values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no id are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devops_deploy_environments_cluster_id" {
  description = "Map of cluster_id values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no cluster_id are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "devops_deploy_environments_compartment_id" {
  description = "Map of compartment_id values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no compartment_id are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "devops_deploy_environments_compute_instance_group_selectors" {
  description = "Map of compute_instance_group_selectors values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no compute_instance_group_selectors are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => one(v.compute_instance_group_selectors) if v.compute_instance_group_selectors != null && length(v.compute_instance_group_selectors) > 0 }
}
output "devops_deploy_environments_defined_tags" {
  description = "Map of defined_tags values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no defined_tags are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "devops_deploy_environments_deploy_environment_type" {
  description = "Map of deploy_environment_type values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no deploy_environment_type are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.deploy_environment_type if v.deploy_environment_type != null && length(v.deploy_environment_type) > 0 }
}
output "devops_deploy_environments_description" {
  description = "Map of description values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no description are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.description if v.description != null && length(v.description) > 0 }
}
output "devops_deploy_environments_display_name" {
  description = "Map of display_name values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no display_name are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "devops_deploy_environments_freeform_tags" {
  description = "Map of freeform_tags values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "devops_deploy_environments_function_id" {
  description = "Map of function_id values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no function_id are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.function_id if v.function_id != null && length(v.function_id) > 0 }
}
output "devops_deploy_environments_lifecycle_details" {
  description = "Map of lifecycle_details values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "devops_deploy_environments_network_channel" {
  description = "Map of network_channel values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no network_channel are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => one(v.network_channel) if v.network_channel != null && length(v.network_channel) > 0 }
}
output "devops_deploy_environments_project_id" {
  description = "Map of project_id values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no project_id are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "devops_deploy_environments_security_attributes" {
  description = "Map of security_attributes values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no security_attributes are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.security_attributes if v.security_attributes != null && length(v.security_attributes) > 0 }
}
output "devops_deploy_environments_state" {
  description = "Map of state values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no state are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.state if v.state != null && length(v.state) > 0 }
}
output "devops_deploy_environments_system_tags" {
  description = "Map of system_tags values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no system_tags are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "devops_deploy_environments_time_created" {
  description = "Map of time_created values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no time_created are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "devops_deploy_environments_time_updated" {
  description = "Map of time_updated values across all devops_deploy_environments, keyed the same as var.devops_deploy_environments except keys with no time_updated are omitted"
  value       = { for k, v in oci_devops_deploy_environment.devops_deploy_environments : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}


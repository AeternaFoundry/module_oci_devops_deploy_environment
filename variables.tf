variable "devops_deploy_environments" {
  description = <<EOT
Map of devops_deploy_environments, attributes below
Required:
    - deploy_environment_type
    - project_id
Optional:
    - cluster_id
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - function_id
    - security_attributes
    - compute_instance_group_selectors (block):
        - items (optional, block):
            - compute_instance_ids (optional)
            - query (optional)
            - region (optional)
            - selector_type (required)
    - network_channel (block):
        - network_channel_type (required)
        - nsg_ids (optional)
        - subnet_id (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    deploy_environment_type = string
    project_id              = string
    cluster_id              = optional(string)
    defined_tags            = optional(map(string))
    description             = optional(string)
    display_name            = optional(string)
    freeform_tags           = optional(map(string))
    function_id             = optional(string)
    security_attributes     = optional(map(string))
    compute_instance_group_selectors = optional(object({
      items = optional(list(object({
        compute_instance_ids = optional(list(string))
        query                = optional(string)
        region               = optional(string)
        selector_type        = string
      })))
    }))
    network_channel = optional(object({
      network_channel_type = string
      nsg_ids              = optional(list(string))
      subnet_id            = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.devops_deploy_environments : (
        contains([for v in ["COMPUTE_INSTANCE_GROUP", "FUNCTION", "OKE_CLUSTER"] : lower(v)], lower(v.deploy_environment_type))
      )
    ])
    error_message = "must be one of: \"COMPUTE_INSTANCE_GROUP\", \"FUNCTION\", \"OKE_CLUSTER\""
  }
  validation {
    condition = alltrue([
      for k, v in var.devops_deploy_environments : (
        v.compute_instance_group_selectors == null || (v.compute_instance_group_selectors.items == null || alltrue([for item in v.compute_instance_group_selectors.items : (contains([for v in ["INSTANCE_IDS", "INSTANCE_QUERY"] : lower(v)], lower(item.selector_type)))]))
      )
    ])
    error_message = "must be one of: \"INSTANCE_IDS\", \"INSTANCE_QUERY\""
  }
  validation {
    condition = alltrue([
      for k, v in var.devops_deploy_environments : (
        v.network_channel == null || (contains([for v in ["PRIVATE_ENDPOINT_CHANNEL", "SERVICE_VNIC_CHANNEL"] : lower(v)], lower(v.network_channel.network_channel_type)))
      )
    ])
    error_message = "must be one of: \"PRIVATE_ENDPOINT_CHANNEL\", \"SERVICE_VNIC_CHANNEL\""
  }
}


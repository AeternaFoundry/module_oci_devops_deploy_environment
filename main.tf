resource "oci_devops_deploy_environment" "devops_deploy_environments" {
  for_each = var.devops_deploy_environments

  deploy_environment_type = each.value.deploy_environment_type
  project_id              = each.value.project_id
  cluster_id              = each.value.cluster_id
  defined_tags            = each.value.defined_tags
  description             = each.value.description
  display_name            = each.value.display_name
  freeform_tags           = each.value.freeform_tags
  function_id             = each.value.function_id
  security_attributes     = each.value.security_attributes

  dynamic "compute_instance_group_selectors" {
    for_each = each.value.compute_instance_group_selectors != null ? [each.value.compute_instance_group_selectors] : []
    content {
      dynamic "items" {
        for_each = compute_instance_group_selectors.value.items != null ? compute_instance_group_selectors.value.items : []
        content {
          compute_instance_ids = items.value.compute_instance_ids
          query                = items.value.query
          region               = items.value.region
          selector_type        = items.value.selector_type
        }
      }
    }
  }

  dynamic "network_channel" {
    for_each = each.value.network_channel != null ? [each.value.network_channel] : []
    content {
      network_channel_type = network_channel.value.network_channel_type
      nsg_ids              = network_channel.value.nsg_ids
      subnet_id            = network_channel.value.subnet_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


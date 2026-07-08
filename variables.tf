variable "management_groups" {
  description = <<EOT
Map of management_groups, attributes below
Optional:
    - display_name
    - name
    - parent_management_group_id
    - subscription_ids
Nested management_group_policy_assignments (azurerm_management_group_policy_assignment):
    Required:
        - name
        - policy_definition_id
    Optional:
        - description
        - display_name
        - enforce
        - location
        - metadata
        - not_scopes
        - parameters
        - identity (block)
        - non_compliance_message (block)
        - overrides (block)
        - resource_selectors (block)
Nested management_group_policy_exemptions (azurerm_management_group_policy_exemption):
    Required:
        - exemption_category
        - name
        - policy_assignment_id
    Optional:
        - description
        - display_name
        - expires_on
        - metadata
        - policy_definition_reference_ids
Nested management_group_policy_remediations (azurerm_management_group_policy_remediation):
    Required:
        - name
        - policy_assignment_id
    Optional:
        - failure_percentage
        - location_filters
        - parallel_deployments
        - policy_definition_reference_id
        - resource_count
Nested management_group_policy_set_definitions (azurerm_management_group_policy_set_definition):
    Required:
        - display_name
        - name
        - policy_type
        - policy_definition_reference (block)
    Optional:
        - description
        - metadata
        - parameters
        - policy_definition_group (block)
Nested management_group_subscription_associations (azurerm_management_group_subscription_association):
    Required:
        - subscription_id
Nested management_group_template_deployments (azurerm_management_group_template_deployment):
    Required:
        - location
        - name
    Optional:
        - debug_level
        - parameters_content
        - tags
        - template_content
        - template_spec_version_id
EOT

  type = map(object({
    display_name               = optional(string)
    name                       = optional(string)
    parent_management_group_id = optional(string)
    subscription_ids           = optional(set(string))
    management_group_policy_assignments = optional(map(object({
      name                 = string
      policy_definition_id = string
      description          = optional(string)
      display_name         = optional(string)
      enforce              = optional(bool) # Default: true
      location             = optional(string)
      metadata             = optional(string)
      not_scopes           = optional(list(string))
      parameters           = optional(string)
      identity = optional(object({
        identity_ids = optional(set(string))
        type         = string
      }))
      non_compliance_message = optional(object({
        content                        = string
        policy_definition_reference_id = optional(string)
      }))
      overrides = optional(object({
        selectors = optional(object({
          in     = optional(list(string))
          kind   = optional(string) # Default: "policyDefinitionReferenceId"
          not_in = optional(list(string))
        }))
        value = string
      }))
      resource_selectors = optional(object({
        name = optional(string)
        selectors = object({
          in     = optional(list(string))
          kind   = string
          not_in = optional(list(string))
        })
      }))
    })))
    management_group_policy_exemptions = optional(map(object({
      exemption_category              = string
      name                            = string
      policy_assignment_id            = string
      description                     = optional(string)
      display_name                    = optional(string)
      expires_on                      = optional(string)
      metadata                        = optional(string)
      policy_definition_reference_ids = optional(list(string))
    })))
    management_group_policy_remediations = optional(map(object({
      name                           = string
      policy_assignment_id           = string
      failure_percentage             = optional(number)
      location_filters               = optional(list(string))
      parallel_deployments           = optional(number)
      policy_definition_reference_id = optional(string)
      resource_count                 = optional(number)
    })))
    management_group_policy_set_definitions = optional(map(object({
      display_name = string
      name         = string
      policy_type  = string
      description  = optional(string)
      metadata     = optional(string)
      parameters   = optional(string)
      policy_definition_reference = object({
        parameter_values     = optional(string)
        policy_definition_id = string
        policy_group_names   = optional(set(string))
        reference_id         = optional(string)
        version              = optional(string)
      })
      policy_definition_group = optional(object({
        additional_metadata_resource_id = optional(string)
        category                        = optional(string)
        description                     = optional(string)
        display_name                    = optional(string)
        name                            = string
      }))
    })))
    management_group_subscription_associations = optional(map(object({
      subscription_id = string
    })))
    management_group_template_deployments = optional(map(object({
      location                 = string
      name                     = string
      debug_level              = optional(string)
      parameters_content       = optional(string)
      tags                     = optional(map(string))
      template_content         = optional(string)
      template_spec_version_id = optional(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.management_groups) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.management_groups : [for kk in keys(coalesce(v0.management_group_policy_assignments, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.management_groups : [for kk in keys(coalesce(v0.management_group_policy_exemptions, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.management_groups : [for kk in keys(coalesce(v0.management_group_policy_remediations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.management_groups : [for kk in keys(coalesce(v0.management_group_policy_set_definitions, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.management_groups : [for kk in keys(coalesce(v0.management_group_subscription_associations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.management_groups : [for kk in keys(coalesce(v0.management_group_template_deployments, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}

# --- azurerm_management_group ---
output "management_groups_display_name" {
  description = "Map of display_name values across all management_groups, keyed the same as var.management_groups"
  value       = module.management_groups.management_groups_display_name
}

output "management_groups_name" {
  description = "Map of name values across all management_groups, keyed the same as var.management_groups"
  value       = module.management_groups.management_groups_name
}

output "management_groups_parent_management_group_id" {
  description = "Map of parent_management_group_id values across all management_groups, keyed the same as var.management_groups"
  value       = module.management_groups.management_groups_parent_management_group_id
}

output "management_groups_subscription_ids" {
  description = "Map of subscription_ids values across all management_groups, keyed the same as var.management_groups"
  value       = module.management_groups.management_groups_subscription_ids
}

output "management_groups_tenant_scoped_id" {
  description = "Map of tenant_scoped_id values across all management_groups, keyed the same as var.management_groups"
  value       = module.management_groups.management_groups_tenant_scoped_id
}

# --- azurerm_management_group_policy_assignment ---
output "management_group_policy_assignments_description" {
  description = "Map of description values across all management_group_policy_assignments, keyed the same as var.management_group_policy_assignments"
  value       = module.management_group_policy_assignments.management_group_policy_assignments_description
}

output "management_group_policy_assignments_display_name" {
  description = "Map of display_name values across all management_group_policy_assignments, keyed the same as var.management_group_policy_assignments"
  value       = module.management_group_policy_assignments.management_group_policy_assignments_display_name
}

output "management_group_policy_assignments_enforce" {
  description = "Map of enforce values across all management_group_policy_assignments, keyed the same as var.management_group_policy_assignments"
  value       = module.management_group_policy_assignments.management_group_policy_assignments_enforce
}

output "management_group_policy_assignments_identity" {
  description = "Map of identity values across all management_group_policy_assignments, keyed the same as var.management_group_policy_assignments"
  value       = module.management_group_policy_assignments.management_group_policy_assignments_identity
}

output "management_group_policy_assignments_location" {
  description = "Map of location values across all management_group_policy_assignments, keyed the same as var.management_group_policy_assignments"
  value       = module.management_group_policy_assignments.management_group_policy_assignments_location
}

output "management_group_policy_assignments_management_group_id" {
  description = "Map of management_group_id values across all management_group_policy_assignments, keyed the same as var.management_group_policy_assignments"
  value       = module.management_group_policy_assignments.management_group_policy_assignments_management_group_id
}

output "management_group_policy_assignments_metadata" {
  description = "Map of metadata values across all management_group_policy_assignments, keyed the same as var.management_group_policy_assignments"
  value       = module.management_group_policy_assignments.management_group_policy_assignments_metadata
}

output "management_group_policy_assignments_name" {
  description = "Map of name values across all management_group_policy_assignments, keyed the same as var.management_group_policy_assignments"
  value       = module.management_group_policy_assignments.management_group_policy_assignments_name
}

output "management_group_policy_assignments_non_compliance_message" {
  description = "Map of non_compliance_message values across all management_group_policy_assignments, keyed the same as var.management_group_policy_assignments"
  value       = module.management_group_policy_assignments.management_group_policy_assignments_non_compliance_message
}

output "management_group_policy_assignments_not_scopes" {
  description = "Map of not_scopes values across all management_group_policy_assignments, keyed the same as var.management_group_policy_assignments"
  value       = module.management_group_policy_assignments.management_group_policy_assignments_not_scopes
}

output "management_group_policy_assignments_overrides" {
  description = "Map of overrides values across all management_group_policy_assignments, keyed the same as var.management_group_policy_assignments"
  value       = module.management_group_policy_assignments.management_group_policy_assignments_overrides
}

output "management_group_policy_assignments_parameters" {
  description = "Map of parameters values across all management_group_policy_assignments, keyed the same as var.management_group_policy_assignments"
  value       = module.management_group_policy_assignments.management_group_policy_assignments_parameters
}

output "management_group_policy_assignments_policy_definition_id" {
  description = "Map of policy_definition_id values across all management_group_policy_assignments, keyed the same as var.management_group_policy_assignments"
  value       = module.management_group_policy_assignments.management_group_policy_assignments_policy_definition_id
}

output "management_group_policy_assignments_resource_selectors" {
  description = "Map of resource_selectors values across all management_group_policy_assignments, keyed the same as var.management_group_policy_assignments"
  value       = module.management_group_policy_assignments.management_group_policy_assignments_resource_selectors
}

# --- azurerm_management_group_policy_exemption ---
output "management_group_policy_exemptions_description" {
  description = "Map of description values across all management_group_policy_exemptions, keyed the same as var.management_group_policy_exemptions"
  value       = module.management_group_policy_exemptions.management_group_policy_exemptions_description
}

output "management_group_policy_exemptions_display_name" {
  description = "Map of display_name values across all management_group_policy_exemptions, keyed the same as var.management_group_policy_exemptions"
  value       = module.management_group_policy_exemptions.management_group_policy_exemptions_display_name
}

output "management_group_policy_exemptions_exemption_category" {
  description = "Map of exemption_category values across all management_group_policy_exemptions, keyed the same as var.management_group_policy_exemptions"
  value       = module.management_group_policy_exemptions.management_group_policy_exemptions_exemption_category
}

output "management_group_policy_exemptions_expires_on" {
  description = "Map of expires_on values across all management_group_policy_exemptions, keyed the same as var.management_group_policy_exemptions"
  value       = module.management_group_policy_exemptions.management_group_policy_exemptions_expires_on
}

output "management_group_policy_exemptions_management_group_id" {
  description = "Map of management_group_id values across all management_group_policy_exemptions, keyed the same as var.management_group_policy_exemptions"
  value       = module.management_group_policy_exemptions.management_group_policy_exemptions_management_group_id
}

output "management_group_policy_exemptions_metadata" {
  description = "Map of metadata values across all management_group_policy_exemptions, keyed the same as var.management_group_policy_exemptions"
  value       = module.management_group_policy_exemptions.management_group_policy_exemptions_metadata
}

output "management_group_policy_exemptions_name" {
  description = "Map of name values across all management_group_policy_exemptions, keyed the same as var.management_group_policy_exemptions"
  value       = module.management_group_policy_exemptions.management_group_policy_exemptions_name
}

output "management_group_policy_exemptions_policy_assignment_id" {
  description = "Map of policy_assignment_id values across all management_group_policy_exemptions, keyed the same as var.management_group_policy_exemptions"
  value       = module.management_group_policy_exemptions.management_group_policy_exemptions_policy_assignment_id
}

output "management_group_policy_exemptions_policy_definition_reference_ids" {
  description = "Map of policy_definition_reference_ids values across all management_group_policy_exemptions, keyed the same as var.management_group_policy_exemptions"
  value       = module.management_group_policy_exemptions.management_group_policy_exemptions_policy_definition_reference_ids
}

# --- azurerm_management_group_policy_remediation ---
output "management_group_policy_remediations_failure_percentage" {
  description = "Map of failure_percentage values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = module.management_group_policy_remediations.management_group_policy_remediations_failure_percentage
}

output "management_group_policy_remediations_location_filters" {
  description = "Map of location_filters values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = module.management_group_policy_remediations.management_group_policy_remediations_location_filters
}

output "management_group_policy_remediations_management_group_id" {
  description = "Map of management_group_id values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = module.management_group_policy_remediations.management_group_policy_remediations_management_group_id
}

output "management_group_policy_remediations_name" {
  description = "Map of name values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = module.management_group_policy_remediations.management_group_policy_remediations_name
}

output "management_group_policy_remediations_parallel_deployments" {
  description = "Map of parallel_deployments values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = module.management_group_policy_remediations.management_group_policy_remediations_parallel_deployments
}

output "management_group_policy_remediations_policy_assignment_id" {
  description = "Map of policy_assignment_id values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = module.management_group_policy_remediations.management_group_policy_remediations_policy_assignment_id
}

output "management_group_policy_remediations_policy_definition_reference_id" {
  description = "Map of policy_definition_reference_id values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = module.management_group_policy_remediations.management_group_policy_remediations_policy_definition_reference_id
}

output "management_group_policy_remediations_resource_count" {
  description = "Map of resource_count values across all management_group_policy_remediations, keyed the same as var.management_group_policy_remediations"
  value       = module.management_group_policy_remediations.management_group_policy_remediations_resource_count
}

# --- azurerm_management_group_policy_set_definition ---
output "management_group_policy_set_definitions_description" {
  description = "Map of description values across all management_group_policy_set_definitions, keyed the same as var.management_group_policy_set_definitions"
  value       = module.management_group_policy_set_definitions.management_group_policy_set_definitions_description
}

output "management_group_policy_set_definitions_display_name" {
  description = "Map of display_name values across all management_group_policy_set_definitions, keyed the same as var.management_group_policy_set_definitions"
  value       = module.management_group_policy_set_definitions.management_group_policy_set_definitions_display_name
}

output "management_group_policy_set_definitions_management_group_id" {
  description = "Map of management_group_id values across all management_group_policy_set_definitions, keyed the same as var.management_group_policy_set_definitions"
  value       = module.management_group_policy_set_definitions.management_group_policy_set_definitions_management_group_id
}

output "management_group_policy_set_definitions_metadata" {
  description = "Map of metadata values across all management_group_policy_set_definitions, keyed the same as var.management_group_policy_set_definitions"
  value       = module.management_group_policy_set_definitions.management_group_policy_set_definitions_metadata
}

output "management_group_policy_set_definitions_name" {
  description = "Map of name values across all management_group_policy_set_definitions, keyed the same as var.management_group_policy_set_definitions"
  value       = module.management_group_policy_set_definitions.management_group_policy_set_definitions_name
}

output "management_group_policy_set_definitions_parameters" {
  description = "Map of parameters values across all management_group_policy_set_definitions, keyed the same as var.management_group_policy_set_definitions"
  value       = module.management_group_policy_set_definitions.management_group_policy_set_definitions_parameters
}

output "management_group_policy_set_definitions_policy_definition_group" {
  description = "Map of policy_definition_group values across all management_group_policy_set_definitions, keyed the same as var.management_group_policy_set_definitions"
  value       = module.management_group_policy_set_definitions.management_group_policy_set_definitions_policy_definition_group
}

output "management_group_policy_set_definitions_policy_definition_reference" {
  description = "Map of policy_definition_reference values across all management_group_policy_set_definitions, keyed the same as var.management_group_policy_set_definitions"
  value       = module.management_group_policy_set_definitions.management_group_policy_set_definitions_policy_definition_reference
}

output "management_group_policy_set_definitions_policy_type" {
  description = "Map of policy_type values across all management_group_policy_set_definitions, keyed the same as var.management_group_policy_set_definitions"
  value       = module.management_group_policy_set_definitions.management_group_policy_set_definitions_policy_type
}

# --- azurerm_management_group_subscription_association ---
output "management_group_subscription_associations_management_group_id" {
  description = "Map of management_group_id values across all management_group_subscription_associations, keyed the same as var.management_group_subscription_associations"
  value       = module.management_group_subscription_associations.management_group_subscription_associations_management_group_id
}

output "management_group_subscription_associations_subscription_id" {
  description = "Map of subscription_id values across all management_group_subscription_associations, keyed the same as var.management_group_subscription_associations"
  value       = module.management_group_subscription_associations.management_group_subscription_associations_subscription_id
}

# --- azurerm_management_group_template_deployment ---
output "management_group_template_deployments_debug_level" {
  description = "Map of debug_level values across all management_group_template_deployments, keyed the same as var.management_group_template_deployments"
  value       = module.management_group_template_deployments.management_group_template_deployments_debug_level
}

output "management_group_template_deployments_location" {
  description = "Map of location values across all management_group_template_deployments, keyed the same as var.management_group_template_deployments"
  value       = module.management_group_template_deployments.management_group_template_deployments_location
}

output "management_group_template_deployments_management_group_id" {
  description = "Map of management_group_id values across all management_group_template_deployments, keyed the same as var.management_group_template_deployments"
  value       = module.management_group_template_deployments.management_group_template_deployments_management_group_id
}

output "management_group_template_deployments_name" {
  description = "Map of name values across all management_group_template_deployments, keyed the same as var.management_group_template_deployments"
  value       = module.management_group_template_deployments.management_group_template_deployments_name
}

output "management_group_template_deployments_output_content" {
  description = "Map of output_content values across all management_group_template_deployments, keyed the same as var.management_group_template_deployments"
  value       = module.management_group_template_deployments.management_group_template_deployments_output_content
}

output "management_group_template_deployments_parameters_content" {
  description = "Map of parameters_content values across all management_group_template_deployments, keyed the same as var.management_group_template_deployments"
  value       = module.management_group_template_deployments.management_group_template_deployments_parameters_content
}

output "management_group_template_deployments_tags" {
  description = "Map of tags values across all management_group_template_deployments, keyed the same as var.management_group_template_deployments"
  value       = module.management_group_template_deployments.management_group_template_deployments_tags
}

output "management_group_template_deployments_template_content" {
  description = "Map of template_content values across all management_group_template_deployments, keyed the same as var.management_group_template_deployments"
  value       = module.management_group_template_deployments.management_group_template_deployments_template_content
}

output "management_group_template_deployments_template_spec_version_id" {
  description = "Map of template_spec_version_id values across all management_group_template_deployments, keyed the same as var.management_group_template_deployments"
  value       = module.management_group_template_deployments.management_group_template_deployments_template_spec_version_id
}



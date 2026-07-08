# --- azurerm_management_group ---
output "management_groups" {
  description = "All management_group resources"
  value       = module.management_groups.management_groups
}
output "management_groups_display_name" {
  description = "List of display_name values across all management_groups"
  value       = [for k, v in module.management_groups.management_groups : v.display_name]
}
output "management_groups_name" {
  description = "List of name values across all management_groups"
  value       = [for k, v in module.management_groups.management_groups : v.name]
}
output "management_groups_parent_management_group_id" {
  description = "List of parent_management_group_id values across all management_groups"
  value       = [for k, v in module.management_groups.management_groups : v.parent_management_group_id]
}
output "management_groups_subscription_ids" {
  description = "List of subscription_ids values across all management_groups"
  value       = [for k, v in module.management_groups.management_groups : v.subscription_ids]
}
output "management_groups_tenant_scoped_id" {
  description = "List of tenant_scoped_id values across all management_groups"
  value       = [for k, v in module.management_groups.management_groups : v.tenant_scoped_id]
}


# --- azurerm_management_group_policy_assignment ---
output "management_group_policy_assignments" {
  description = "All management_group_policy_assignment resources"
  value       = module.management_group_policy_assignments.management_group_policy_assignments
}
output "management_group_policy_assignments_description" {
  description = "List of description values across all management_group_policy_assignments"
  value       = [for k, v in module.management_group_policy_assignments.management_group_policy_assignments : v.description]
}
output "management_group_policy_assignments_display_name" {
  description = "List of display_name values across all management_group_policy_assignments"
  value       = [for k, v in module.management_group_policy_assignments.management_group_policy_assignments : v.display_name]
}
output "management_group_policy_assignments_enforce" {
  description = "List of enforce values across all management_group_policy_assignments"
  value       = [for k, v in module.management_group_policy_assignments.management_group_policy_assignments : v.enforce]
}
output "management_group_policy_assignments_identity" {
  description = "List of identity values across all management_group_policy_assignments"
  value       = [for k, v in module.management_group_policy_assignments.management_group_policy_assignments : v.identity]
}
output "management_group_policy_assignments_location" {
  description = "List of location values across all management_group_policy_assignments"
  value       = [for k, v in module.management_group_policy_assignments.management_group_policy_assignments : v.location]
}
output "management_group_policy_assignments_management_group_id" {
  description = "List of management_group_id values across all management_group_policy_assignments"
  value       = [for k, v in module.management_group_policy_assignments.management_group_policy_assignments : v.management_group_id]
}
output "management_group_policy_assignments_metadata" {
  description = "List of metadata values across all management_group_policy_assignments"
  value       = [for k, v in module.management_group_policy_assignments.management_group_policy_assignments : v.metadata]
}
output "management_group_policy_assignments_name" {
  description = "List of name values across all management_group_policy_assignments"
  value       = [for k, v in module.management_group_policy_assignments.management_group_policy_assignments : v.name]
}
output "management_group_policy_assignments_non_compliance_message" {
  description = "List of non_compliance_message values across all management_group_policy_assignments"
  value       = [for k, v in module.management_group_policy_assignments.management_group_policy_assignments : v.non_compliance_message]
}
output "management_group_policy_assignments_not_scopes" {
  description = "List of not_scopes values across all management_group_policy_assignments"
  value       = [for k, v in module.management_group_policy_assignments.management_group_policy_assignments : v.not_scopes]
}
output "management_group_policy_assignments_overrides" {
  description = "List of overrides values across all management_group_policy_assignments"
  value       = [for k, v in module.management_group_policy_assignments.management_group_policy_assignments : v.overrides]
}
output "management_group_policy_assignments_parameters" {
  description = "List of parameters values across all management_group_policy_assignments"
  value       = [for k, v in module.management_group_policy_assignments.management_group_policy_assignments : v.parameters]
}
output "management_group_policy_assignments_policy_definition_id" {
  description = "List of policy_definition_id values across all management_group_policy_assignments"
  value       = [for k, v in module.management_group_policy_assignments.management_group_policy_assignments : v.policy_definition_id]
}
output "management_group_policy_assignments_resource_selectors" {
  description = "List of resource_selectors values across all management_group_policy_assignments"
  value       = [for k, v in module.management_group_policy_assignments.management_group_policy_assignments : v.resource_selectors]
}


# --- azurerm_management_group_policy_exemption ---
output "management_group_policy_exemptions" {
  description = "All management_group_policy_exemption resources"
  value       = module.management_group_policy_exemptions.management_group_policy_exemptions
}
output "management_group_policy_exemptions_description" {
  description = "List of description values across all management_group_policy_exemptions"
  value       = [for k, v in module.management_group_policy_exemptions.management_group_policy_exemptions : v.description]
}
output "management_group_policy_exemptions_display_name" {
  description = "List of display_name values across all management_group_policy_exemptions"
  value       = [for k, v in module.management_group_policy_exemptions.management_group_policy_exemptions : v.display_name]
}
output "management_group_policy_exemptions_exemption_category" {
  description = "List of exemption_category values across all management_group_policy_exemptions"
  value       = [for k, v in module.management_group_policy_exemptions.management_group_policy_exemptions : v.exemption_category]
}
output "management_group_policy_exemptions_expires_on" {
  description = "List of expires_on values across all management_group_policy_exemptions"
  value       = [for k, v in module.management_group_policy_exemptions.management_group_policy_exemptions : v.expires_on]
}
output "management_group_policy_exemptions_management_group_id" {
  description = "List of management_group_id values across all management_group_policy_exemptions"
  value       = [for k, v in module.management_group_policy_exemptions.management_group_policy_exemptions : v.management_group_id]
}
output "management_group_policy_exemptions_metadata" {
  description = "List of metadata values across all management_group_policy_exemptions"
  value       = [for k, v in module.management_group_policy_exemptions.management_group_policy_exemptions : v.metadata]
}
output "management_group_policy_exemptions_name" {
  description = "List of name values across all management_group_policy_exemptions"
  value       = [for k, v in module.management_group_policy_exemptions.management_group_policy_exemptions : v.name]
}
output "management_group_policy_exemptions_policy_assignment_id" {
  description = "List of policy_assignment_id values across all management_group_policy_exemptions"
  value       = [for k, v in module.management_group_policy_exemptions.management_group_policy_exemptions : v.policy_assignment_id]
}
output "management_group_policy_exemptions_policy_definition_reference_ids" {
  description = "List of policy_definition_reference_ids values across all management_group_policy_exemptions"
  value       = [for k, v in module.management_group_policy_exemptions.management_group_policy_exemptions : v.policy_definition_reference_ids]
}


# --- azurerm_management_group_policy_remediation ---
output "management_group_policy_remediations" {
  description = "All management_group_policy_remediation resources"
  value       = module.management_group_policy_remediations.management_group_policy_remediations
}
output "management_group_policy_remediations_failure_percentage" {
  description = "List of failure_percentage values across all management_group_policy_remediations"
  value       = [for k, v in module.management_group_policy_remediations.management_group_policy_remediations : v.failure_percentage]
}
output "management_group_policy_remediations_location_filters" {
  description = "List of location_filters values across all management_group_policy_remediations"
  value       = [for k, v in module.management_group_policy_remediations.management_group_policy_remediations : v.location_filters]
}
output "management_group_policy_remediations_management_group_id" {
  description = "List of management_group_id values across all management_group_policy_remediations"
  value       = [for k, v in module.management_group_policy_remediations.management_group_policy_remediations : v.management_group_id]
}
output "management_group_policy_remediations_name" {
  description = "List of name values across all management_group_policy_remediations"
  value       = [for k, v in module.management_group_policy_remediations.management_group_policy_remediations : v.name]
}
output "management_group_policy_remediations_parallel_deployments" {
  description = "List of parallel_deployments values across all management_group_policy_remediations"
  value       = [for k, v in module.management_group_policy_remediations.management_group_policy_remediations : v.parallel_deployments]
}
output "management_group_policy_remediations_policy_assignment_id" {
  description = "List of policy_assignment_id values across all management_group_policy_remediations"
  value       = [for k, v in module.management_group_policy_remediations.management_group_policy_remediations : v.policy_assignment_id]
}
output "management_group_policy_remediations_policy_definition_reference_id" {
  description = "List of policy_definition_reference_id values across all management_group_policy_remediations"
  value       = [for k, v in module.management_group_policy_remediations.management_group_policy_remediations : v.policy_definition_reference_id]
}
output "management_group_policy_remediations_resource_count" {
  description = "List of resource_count values across all management_group_policy_remediations"
  value       = [for k, v in module.management_group_policy_remediations.management_group_policy_remediations : v.resource_count]
}


# --- azurerm_management_group_policy_set_definition ---
output "management_group_policy_set_definitions" {
  description = "All management_group_policy_set_definition resources"
  value       = module.management_group_policy_set_definitions.management_group_policy_set_definitions
}
output "management_group_policy_set_definitions_description" {
  description = "List of description values across all management_group_policy_set_definitions"
  value       = [for k, v in module.management_group_policy_set_definitions.management_group_policy_set_definitions : v.description]
}
output "management_group_policy_set_definitions_display_name" {
  description = "List of display_name values across all management_group_policy_set_definitions"
  value       = [for k, v in module.management_group_policy_set_definitions.management_group_policy_set_definitions : v.display_name]
}
output "management_group_policy_set_definitions_management_group_id" {
  description = "List of management_group_id values across all management_group_policy_set_definitions"
  value       = [for k, v in module.management_group_policy_set_definitions.management_group_policy_set_definitions : v.management_group_id]
}
output "management_group_policy_set_definitions_metadata" {
  description = "List of metadata values across all management_group_policy_set_definitions"
  value       = [for k, v in module.management_group_policy_set_definitions.management_group_policy_set_definitions : v.metadata]
}
output "management_group_policy_set_definitions_name" {
  description = "List of name values across all management_group_policy_set_definitions"
  value       = [for k, v in module.management_group_policy_set_definitions.management_group_policy_set_definitions : v.name]
}
output "management_group_policy_set_definitions_parameters" {
  description = "List of parameters values across all management_group_policy_set_definitions"
  value       = [for k, v in module.management_group_policy_set_definitions.management_group_policy_set_definitions : v.parameters]
}
output "management_group_policy_set_definitions_policy_definition_group" {
  description = "List of policy_definition_group values across all management_group_policy_set_definitions"
  value       = [for k, v in module.management_group_policy_set_definitions.management_group_policy_set_definitions : v.policy_definition_group]
}
output "management_group_policy_set_definitions_policy_definition_reference" {
  description = "List of policy_definition_reference values across all management_group_policy_set_definitions"
  value       = [for k, v in module.management_group_policy_set_definitions.management_group_policy_set_definitions : v.policy_definition_reference]
}
output "management_group_policy_set_definitions_policy_type" {
  description = "List of policy_type values across all management_group_policy_set_definitions"
  value       = [for k, v in module.management_group_policy_set_definitions.management_group_policy_set_definitions : v.policy_type]
}


# --- azurerm_management_group_subscription_association ---
output "management_group_subscription_associations" {
  description = "All management_group_subscription_association resources"
  value       = module.management_group_subscription_associations.management_group_subscription_associations
}
output "management_group_subscription_associations_management_group_id" {
  description = "List of management_group_id values across all management_group_subscription_associations"
  value       = [for k, v in module.management_group_subscription_associations.management_group_subscription_associations : v.management_group_id]
}
output "management_group_subscription_associations_subscription_id" {
  description = "List of subscription_id values across all management_group_subscription_associations"
  value       = [for k, v in module.management_group_subscription_associations.management_group_subscription_associations : v.subscription_id]
}


# --- azurerm_management_group_template_deployment ---
output "management_group_template_deployments" {
  description = "All management_group_template_deployment resources"
  value       = module.management_group_template_deployments.management_group_template_deployments
}
output "management_group_template_deployments_debug_level" {
  description = "List of debug_level values across all management_group_template_deployments"
  value       = [for k, v in module.management_group_template_deployments.management_group_template_deployments : v.debug_level]
}
output "management_group_template_deployments_location" {
  description = "List of location values across all management_group_template_deployments"
  value       = [for k, v in module.management_group_template_deployments.management_group_template_deployments : v.location]
}
output "management_group_template_deployments_management_group_id" {
  description = "List of management_group_id values across all management_group_template_deployments"
  value       = [for k, v in module.management_group_template_deployments.management_group_template_deployments : v.management_group_id]
}
output "management_group_template_deployments_name" {
  description = "List of name values across all management_group_template_deployments"
  value       = [for k, v in module.management_group_template_deployments.management_group_template_deployments : v.name]
}
output "management_group_template_deployments_output_content" {
  description = "List of output_content values across all management_group_template_deployments"
  value       = [for k, v in module.management_group_template_deployments.management_group_template_deployments : v.output_content]
}
output "management_group_template_deployments_parameters_content" {
  description = "List of parameters_content values across all management_group_template_deployments"
  value       = [for k, v in module.management_group_template_deployments.management_group_template_deployments : v.parameters_content]
}
output "management_group_template_deployments_tags" {
  description = "List of tags values across all management_group_template_deployments"
  value       = [for k, v in module.management_group_template_deployments.management_group_template_deployments : v.tags]
}
output "management_group_template_deployments_template_content" {
  description = "List of template_content values across all management_group_template_deployments"
  value       = [for k, v in module.management_group_template_deployments.management_group_template_deployments : v.template_content]
}
output "management_group_template_deployments_template_spec_version_id" {
  description = "List of template_spec_version_id values across all management_group_template_deployments"
  value       = [for k, v in module.management_group_template_deployments.management_group_template_deployments : v.template_spec_version_id]
}




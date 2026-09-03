locals {
  management_groups = { for k1, v1 in var.management_groups : k1 => { display_name = v1.display_name, name = v1.name, parent_management_group_id = v1.parent_management_group_id, subscription_ids = v1.subscription_ids } }

  management_group_policy_assignments = merge([
    for k1, v1 in var.management_groups : {
      for k2, v2 in coalesce(v1.management_group_policy_assignments, {}) :
      "${k1}/${k2}" => merge(v2, {
        management_group_id = module.management_groups.management_groups_id["${k1}"]
      })
    }
  ]...)

  management_group_policy_exemptions = merge([
    for k1, v1 in var.management_groups : {
      for k2, v2 in coalesce(v1.management_group_policy_exemptions, {}) :
      "${k1}/${k2}" => merge(v2, {
        management_group_id = module.management_groups.management_groups_id["${k1}"]
      })
    }
  ]...)

  management_group_policy_remediations = merge([
    for k1, v1 in var.management_groups : {
      for k2, v2 in coalesce(v1.management_group_policy_remediations, {}) :
      "${k1}/${k2}" => merge(v2, {
        management_group_id = module.management_groups.management_groups_id["${k1}"]
      })
    }
  ]...)

  management_group_policy_set_definitions = merge([
    for k1, v1 in var.management_groups : {
      for k2, v2 in coalesce(v1.management_group_policy_set_definitions, {}) :
      "${k1}/${k2}" => merge(v2, {
        management_group_id = module.management_groups.management_groups_id["${k1}"]
      })
    }
  ]...)

  management_group_subscription_associations = merge([
    for k1, v1 in var.management_groups : {
      for k2, v2 in coalesce(v1.management_group_subscription_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        management_group_id = module.management_groups.management_groups_id["${k1}"]
      })
    }
  ]...)

  management_group_template_deployments = merge([
    for k1, v1 in var.management_groups : {
      for k2, v2 in coalesce(v1.management_group_template_deployments, {}) :
      "${k1}/${k2}" => merge(v2, {
        management_group_id = module.management_groups.management_groups_id["${k1}"]
      })
    }
  ]...)
}

module "management_groups" {
  source            = "git::https://github.com/AeternaModules/azurerm_management_group.git?ref=v5.0.1"
  management_groups = local.management_groups
}

module "management_group_policy_assignments" {
  source                              = "git::https://github.com/AeternaModules/azurerm_management_group_policy_assignment.git?ref=v5.0.1"
  management_group_policy_assignments = local.management_group_policy_assignments
  depends_on                          = [module.management_groups]
}

module "management_group_policy_exemptions" {
  source                             = "git::https://github.com/AeternaModules/azurerm_management_group_policy_exemption.git?ref=v5.0.1"
  management_group_policy_exemptions = local.management_group_policy_exemptions
  depends_on                         = [module.management_groups]
}

module "management_group_policy_remediations" {
  source                               = "git::https://github.com/AeternaModules/azurerm_management_group_policy_remediation.git?ref=v5.0.1"
  management_group_policy_remediations = local.management_group_policy_remediations
  depends_on                           = [module.management_groups]
}

module "management_group_policy_set_definitions" {
  source                                  = "git::https://github.com/AeternaModules/azurerm_management_group_policy_set_definition.git?ref=v5.0.1"
  management_group_policy_set_definitions = local.management_group_policy_set_definitions
  depends_on                              = [module.management_groups]
}

module "management_group_subscription_associations" {
  source                                     = "git::https://github.com/AeternaModules/azurerm_management_group_subscription_association.git?ref=v5.0.1"
  management_group_subscription_associations = local.management_group_subscription_associations
  depends_on                                 = [module.management_groups]
}

module "management_group_template_deployments" {
  source                                = "git::https://github.com/AeternaModules/azurerm_management_group_template_deployment.git?ref=v5.0.1"
  management_group_template_deployments = local.management_group_template_deployments
  depends_on                            = [module.management_groups]
}


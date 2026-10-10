output "iam_role_policies_id" {
  description = "Map of id values across all iam_role_policies, keyed the same as var.iam_role_policies"
  value       = { for k, v in aws_iam_role_policy.iam_role_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_role_policies_name" {
  description = "Map of name values across all iam_role_policies, keyed the same as var.iam_role_policies"
  value       = { for k, v in aws_iam_role_policy.iam_role_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iam_role_policies_name_prefix" {
  description = "Map of name_prefix values across all iam_role_policies, keyed the same as var.iam_role_policies"
  value       = { for k, v in aws_iam_role_policy.iam_role_policies : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "iam_role_policies_policy" {
  description = "Map of policy values across all iam_role_policies, keyed the same as var.iam_role_policies"
  value       = { for k, v in aws_iam_role_policy.iam_role_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "iam_role_policies_role" {
  description = "Map of role values across all iam_role_policies, keyed the same as var.iam_role_policies"
  value       = { for k, v in aws_iam_role_policy.iam_role_policies : k => v.role if v.role != null && length(v.role) > 0 }
}


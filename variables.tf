variable "iam_role_policies" {
  description = <<EOT
Map of iam_role_policies, attributes below
Required:
    - policy
    - role
Optional:
    - name
    - name_prefix
EOT

  type = map(object({
    policy      = string
    role        = string
    name        = optional(string)
    name_prefix = optional(string)
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


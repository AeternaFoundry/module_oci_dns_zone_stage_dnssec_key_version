variable "dns_zone_stage_dnssec_key_versions" {
  description = <<EOT
Map of dns_zone_stage_dnssec_key_versions, attributes below
Required:
    - predecessor_dnssec_key_version_uuid
    - zone_id
Optional:
    - scope
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    predecessor_dnssec_key_version_uuid = string
    zone_id                             = string
    scope                               = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}


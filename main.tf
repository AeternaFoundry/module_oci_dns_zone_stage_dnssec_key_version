resource "oci_dns_zone_stage_dnssec_key_version" "dns_zone_stage_dnssec_key_versions" {
  for_each = var.dns_zone_stage_dnssec_key_versions

  predecessor_dnssec_key_version_uuid = each.value.predecessor_dnssec_key_version_uuid
  zone_id                             = each.value.zone_id
  scope                               = each.value.scope

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


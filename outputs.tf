output "signing_keys_lookup_id" {
  description = "Map of id values across all signing_keys_lookup, keyed the same as var.signing_keys_lookup except keys with no id are omitted"
  value       = { for k, v in data.auth0_signing_keys.signing_keys_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "signing_keys_lookup_signing_keys" {
  description = "Map of signing_keys values across all signing_keys_lookup, keyed the same as var.signing_keys_lookup except keys with no signing_keys are omitted"
  value       = { for k, v in data.auth0_signing_keys.signing_keys_lookup : k => v.signing_keys if v.signing_keys != null && length(v.signing_keys) > 0 }
}


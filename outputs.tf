output "signing_keys_lookup_id" {
  description = "Map of id values across all signing_keys_lookup, keyed the same as var.signing_keys_lookup"
  value       = { for k, v in data.auth0_signing_keys.signing_keys_lookup : k => v.id }
}
output "signing_keys_lookup_signing_keys" {
  description = "Map of signing_keys values across all signing_keys_lookup, keyed the same as var.signing_keys_lookup"
  value       = { for k, v in data.auth0_signing_keys.signing_keys_lookup : k => v.signing_keys }
}


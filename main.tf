data "auth0_signing_keys" "signing_keys_lookup" {
  for_each = var.signing_keys_lookup

}


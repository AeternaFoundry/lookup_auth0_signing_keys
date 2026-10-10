variable "signing_keys_lookup" {
  description = <<EOT
Map of signing_keys_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}


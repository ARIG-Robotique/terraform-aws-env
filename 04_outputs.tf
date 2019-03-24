output "bucket_artefact_url" {
  description = "URL pour accéder au bucket des artefacts"
  value       = "${aws_s3_bucket.artefacts.bucket_regional_domain_name}"
}

output "maven_access" {
  description = <<EOF
Identifiant de connexion du compte d'upload Maven.<br>
Le mot de passe chiffré est récupérable avec la clé PGP de @gdepuille :<br>
`terraform output -json maven_access | jq -r '.value.encrypted_password' | base64 --decode | keybase pgp decrypt`
EOF

  value = "${map(
    "access_key", aws_iam_access_key.maven.id,
    "encrypted_password", aws_iam_access_key.maven.encrypted_secret
  )}"
}

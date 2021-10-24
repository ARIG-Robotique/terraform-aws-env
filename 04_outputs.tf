output "arig_bucket_artefact_url" {
  description = "URL pour accéder au bucket des artefacts"
  value       = aws_s3_bucket.artefacts.bucket_regional_domain_name
}

output "maven_access" {
  description = <<EOF
Identifiant de connexion du compte d'upload Maven.<br>
Le mot de passe chiffré est récupérable avec la clé PGP de @gdepuille :<br>
`terraform output -json maven_access | jq -r '.value.encrypted_password' | base64 --decode | keybase pgp decrypt`
EOF

  value = {
    access_key         = aws_iam_access_key.maven_user.id
    encrypted_password = aws_iam_access_key.maven_user.encrypted_secret
  }
}

output "damien_access" {
  description = <<EOF
Identifiant de connexion du compte de Damien.<br>
Le mot de passe chiffré est récupérable avec la clé PGP de @gdepuille :<br>
`terraform output -json damien_access | jq -r '.value.encrypted_password' | base64 --decode | keybase pgp decrypt`
EOF

  value = {
    login              = aws_iam_user.damien.name
    encrypted_password = aws_iam_user_login_profile.damien.encrypted_password
  }
}

output "guillaume_access" {
  description = <<EOF
Identifiant de connexion du compte de Guillaume.<br>
Le mot de passe chiffré est récupérable avec la clé PGP de @gdepuille :<br>
`terraform output -json guillaume_access | jq -r '.value.encrypted_password' | base64 --decode | keybase pgp decrypt`
EOF

  value = {
    login              = aws_iam_user.guillaume.name
    encrypted_password = aws_iam_user_login_profile.guillaume.encrypted_password
  }
}

output "thomas_access" {
  description = <<EOF
Identifiant de connexion du compte de Thomas.<br>
Le mot de passe chiffré est récupérable avec la clé PGP de @gdepuille :<br>
`terraform output -json thomas_access | jq -r '.value.encrypted_password' | base64 --decode | keybase pgp decrypt`
EOF

  value = {
    login              = aws_iam_user.thomas.name
    encrypted_password = aws_iam_user_login_profile.thomas.encrypted_password
  }
}

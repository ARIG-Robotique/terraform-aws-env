# Projet terraform-aws-env

Gestion de l'environnement AWS de l'association.

## Table Of Contents

<!-- toc -->

- [Inputs](#inputs)
- [Outputs](#outputs)

<!-- tocstop -->

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| default_tags | Tags par défaut sur les resources | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| bucket_artefact_url | URL pour accéder au bucket des artefacts |
| maven_access | Identifiant de connexion du compte d'upload Maven.<br> Le mot de passe chiffré est récupérable avec la clé PGP de @gdepuille :<br> `terraform output -json maven_access | jq -r '.value.encrypted_password' | base64 --decode | keybase pgp decrypt` |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

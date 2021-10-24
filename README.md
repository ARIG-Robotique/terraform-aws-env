# Projet terraform-aws-env

Gestion de l'environnement AWS de l'association.

## Table Of Contents

<!-- toc -->

- [Requirements](#requirements)
- [Providers](#providers)
- [Modules](#modules)
- [Resources](#resources)
- [Inputs](#inputs)
- [Outputs](#outputs)

<!-- tocstop -->

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.3, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.63.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.maven](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_group.artefacts](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group_policy_attachment.artefacts](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_policy.access_bucket_artefacts_for_maven](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_user.maven](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_group_membership.maven](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership) | resource |
| [aws_s3_bucket.artefacts](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.artefacts](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_iam_policy_document.access_bucket_artefacts_for_maven](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_artefact_url"></a> [bucket\_artefact\_url](#output\_bucket\_artefact\_url) | URL pour accéder au bucket des artefacts |
| <a name="output_maven_access"></a> [maven\_access](#output\_maven\_access) | Identifiant de connexion du compte d'upload Maven.<br><br>Le mot de passe chiffré est récupérable avec la clé PGP de @gdepuille :<br><br>`terraform output -json maven_access | jq -r '.value.encrypted_password' | base64 --decode | keybase pgp decrypt` |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

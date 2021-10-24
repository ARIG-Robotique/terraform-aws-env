resource "aws_iam_user" "maven" {
  name = "arig-maven"
}

resource "aws_iam_access_key" "maven" {
  user    = aws_iam_user.maven.name
  pgp_key = "keybase:gdepuille"
}

resource "aws_iam_user_group_membership" "maven" {
  user = aws_iam_user.maven.name

  groups = [
    aws_iam_group.artefacts.name
  ]
}

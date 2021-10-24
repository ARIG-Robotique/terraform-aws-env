# Compte technique (CI, etc...) #
#################################
resource "aws_iam_user" "maven_user" {
  name = "arig-maven"
}

resource "aws_iam_access_key" "maven_user" {
  user    = aws_iam_user.maven_user.name
  pgp_key = local.iam_pgp_key
}

resource "aws_iam_user_group_membership" "maven_user" {
  user = aws_iam_user.maven_user.name

  groups = [
    aws_iam_group.artefacts.name
  ]
}

# Compte humain #
#################

// Greg
resource "aws_iam_user" "gregory" {
  name          = "gregory"
  force_destroy = true
}

resource "aws_iam_user_group_membership" "gregory" {
  user = aws_iam_user.gregory.name

  groups = [
    aws_iam_group.artefacts.name,
    aws_iam_group.software.name
  ]
}

resource "aws_iam_user_login_profile" "gregory" {
  user    = aws_iam_user.gregory.name
  pgp_key = local.iam_pgp_key
}

// Damien
resource "aws_iam_user" "damien" {
  name          = "damien"
  force_destroy = true
}

resource "aws_iam_user_group_membership" "damien" {
  user = aws_iam_user.damien.name

  groups = [
    aws_iam_group.artefacts.name,
    aws_iam_group.software.name
  ]
}

resource "aws_iam_user_login_profile" "damien" {
  user    = aws_iam_user.damien.name
  pgp_key = local.iam_pgp_key
}

// Guillaume
resource "aws_iam_user" "guillaume" {
  name          = "guillaume"
  force_destroy = true
}

resource "aws_iam_user_group_membership" "guillaume" {
  user = aws_iam_user.guillaume.name

  groups = [
    aws_iam_group.artefacts.name,
    aws_iam_group.software.name
  ]
}

resource "aws_iam_user_login_profile" "guillaume" {
  user    = aws_iam_user.guillaume.name
  pgp_key = local.iam_pgp_key
}

// Thomas
resource "aws_iam_user" "thomas" {
  name          = "thomas"
  force_destroy = true
}

resource "aws_iam_user_group_membership" "thomas" {
  user = aws_iam_user.thomas.name

  groups = [
    aws_iam_group.artefacts.name,
    aws_iam_group.software.name
  ]
}

resource "aws_iam_user_login_profile" "thomas" {
  user    = aws_iam_user.thomas.name
  pgp_key = local.iam_pgp_key
}

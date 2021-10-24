// Groupe d'accès aux artéfacts
resource "aws_iam_group" "artefacts" {
  name = "arig-artefacts"
}

resource "aws_iam_group_policy_attachment" "artefacts_group_access_maven_artefacts" {
  group      = aws_iam_group.artefacts.name
  policy_arn = aws_iam_policy.access_bucket_artefacts_for_maven.arn
}

// Groupe d'accès aux soft
resource "aws_iam_group" "software" {
  name = "arig-software"
}

resource "aws_iam_group_policy_attachment" "software_group_access_software_artefact" {
  group      = aws_iam_group.software.name
  policy_arn = aws_iam_policy.access_bucket_artefacts_for_software.arn
}

resource "aws_iam_group_policy_attachment" "software_group_access_maven_artefact" {
  group      = aws_iam_group.software.name
  policy_arn = aws_iam_policy.access_bucket_artefacts_for_maven.arn
}

// Groupe d'accès aux artéfacts
resource "aws_iam_group" "artefacts" {
  name = "arig-artefacts"
}

resource "aws_iam_group_policy_attachment" "artefacts" {
  group      = "${aws_iam_group.artefacts.name}"
  policy_arn = "${aws_iam_policy.access_bucket_artefacts_for_maven.arn}"
}

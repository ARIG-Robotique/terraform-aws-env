data "aws_iam_policy_document" "access_bucket_artefacts_for_maven" {
  statement {
    sid    = 1
    effect = "Allow"

    actions = [
      "s3:GetBucketLocation",
      "s3:ListBucket",
    ]

    resources = [
      "arn:aws:s3:::${aws_s3_bucket.artefacts.bucket}",
    ]
  }

  statement {
    sid    = 2
    effect = "Allow"

    actions = [
      "s3:GetObject",
      "s3:PutObject",
    ]

    resources = [
      "arn:aws:s3:::${aws_s3_bucket.artefacts.bucket}/maven/*",
    ]
  }
}

resource "aws_iam_policy" "access_bucket_artefacts_for_maven" {
  name   = "AccessBucketArtefactsForMaven"
  policy = "${data.aws_iam_policy_document.access_bucket_artefacts_for_maven.json}"
}

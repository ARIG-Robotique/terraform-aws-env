variable "default_tags" {
  type        = "map"
  description = "Tags par défaut sur les resources"

  default = {
    Owner = "ARIG"
  }
}

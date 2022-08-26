module "gcloud" {
  source  = "terraform-google-modules/gcloud/google"
  version = "~> 2.0"

  platform = "linux"

  create_cmd_entrypoint = "${path.module}/scripts/script.sh"
  create_cmd_body       = "create ${var.zone}"
  destroy_cmd_entrypoint = "${path.module}/scripts/script.sh"
  destroy_cmd_body       = "delete ${var.zone}"
}

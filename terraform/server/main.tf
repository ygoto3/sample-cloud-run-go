module "cloud_run" {
  source = "../modules/cloud_run"

  project_id = "${var.project_id}"
  service_name = "${var.service_name}"
  location = "${var.region}"
  image_id = "${var.image_id}"
}

# Enables the Cloud Run API
resource "google_project_service" "run_api" {
  service = "run.googleapis.com"

  disable_on_destroy = true
}

module "cloud_run" {
  depends_on = [google_project_service.run_api]

  source = "../modules/cloud_run"

  project_id = "${var.project_id}"
  service_name = "${var.service_name}"
  location = "${var.region}"
  image_id = "${var.image_id}"
}


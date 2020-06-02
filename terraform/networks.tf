resource "google_compute_network" "network" {
  name                    = "${var.env_name}-${var.name}"
  auto_create_subnetworks = false
}
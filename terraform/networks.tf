resource "google_compute_network" "network" {
  name                    = "network"
  auto_create_subnetworks = false
}
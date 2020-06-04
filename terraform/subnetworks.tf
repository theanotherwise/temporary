resource "google_compute_subnetwork" "web-internal" {
  name          = var.web_name_internal
  ip_cidr_range = var.web_cidr_internal
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "app-internal" {
  name          = var.app_name_internal
  ip_cidr_range = var.app_cidr_internal
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "db-internal" {
  name          = var.db_name_internal
  ip_cidr_range = var.db_cidr_internal
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "bastion-internal" {
  name          = var.bastion_name_internal
  ip_cidr_range = var.bastion_cidr_internal
  region        = var.region
  network       = google_compute_network.network.name
  depends_on    = [google_compute_network.network]
}
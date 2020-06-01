resource "google_compute_subnetwork" "ide_subnetwork" {
  name          = var.ide_subnetwork
  ip_cidr_range = var.ide_ip_cidr_range
  region        = var.region
  network       = var.network_name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "pte_subnetwork" {
  name          = var.pte_subnetwork
  ip_cidr_range = var.pte_ip_cidr_range
  region        = var.region
  network       = var.network_name
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "dbptr_subnetwork" {
  name          = var.dbptr_subnetwork
  ip_cidr_range = var.dbptr_ip_cidr_range
  region        = var.region
  network       = var.network_name
  depends_on    = [google_compute_network.network]
}
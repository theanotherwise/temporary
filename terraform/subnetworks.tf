resource "google_compute_subnetwork" "web_subnetwork" {
  name          = "${var.web_name}"
  ip_cidr_range = var.web_ip_cidr_range
  region        = var.region
  network       = "${var.env_name}-${var.name}"
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "app_subnetwork" {
  name          = "${var.app_name}"
  ip_cidr_range = var.app_ip_cidr_range
  region        = var.region
  network       = "${var.env_name}-${var.name}"
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "db_subnetwork" {
  name          = "${var.db_name}"
  ip_cidr_range = var.db_ip_cidr_range
  region        = var.region
  network       = "${var.env_name}-${var.name}"
  depends_on    = [google_compute_network.network]
}

resource "google_compute_subnetwork" "redis_subnetwork" {
  name          = "${var.redis_name}"
  ip_cidr_range = var.redis_ip_cidr_range
  region        = var.region
  network       = "${var.env_name}-${var.name}"
  depends_on    = [google_compute_network.network]
}
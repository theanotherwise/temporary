resource "google_compute_firewall" "from-bastion" {
  name          = "from-bastion"
  network       = google_compute_network.network.name

  allow {
    protocol    = "tcp"
    ports       = ["22", "80", "443"]
  }

  direction     = "INGRESS"

  target_tags = ["web", "app", "db"]
  source_tags = ["bastion"]

  depends_on  = [google_compute_network.network]
}

resource "google_compute_firewall" "to-bastion" {
  name          = "to-bastion"
  network       = google_compute_network.network.name

  allow {
    protocol    = "tcp"
    ports       = ["22"]
  }

  direction     = "INGRESS"

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["bastion"]

  depends_on  = [google_compute_network.network]
}
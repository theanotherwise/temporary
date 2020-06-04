resource "google_compute_address" "web-external" {
  name = "web-external-${count.index + 1}"
  count = var.web_count
}

resource "google_compute_address" "app-external" {
  name = "app-external-${count.index + 1}"
  count = var.web_count
}

resource "google_compute_address" "db-external" {
  name = "db-external-${count.index + 1}"
  count = var.web_count
}

resource "google_compute_address" "bastion-external" {
  name = "bastion-external"
}
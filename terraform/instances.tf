resource "google_compute_instance" "web_instance" {
  name          = "${var.env_name}-${var.name}-${var.web_name}${count.index}"
  machine_type  = var.web_machine_type
  count         = var.web_count
  boot_disk {
    initialize_params {
      image     = var.image
    }
  }
  network_interface {
    subnetwork  = "${var.web_name}"
  }
  depends_on    = [google_compute_subnetwork.web_subnetwork]
}

resource "google_compute_instance" "app_instance" {
  name          = "${var.env_name}-${var.name}-${var.app_name}${count.index}"
  machine_type  = var.app_machine_type
  count         = var.app_count
  boot_disk {
    initialize_params {
      image     = var.image
    }
  }
  network_interface {
    subnetwork  = "${var.app_name}"
  }
  depends_on    = [google_compute_subnetwork.app_subnetwork]
}

resource "google_compute_instance" "db_instance" {
  name         = "${var.env_name}-${var.name}-${var.db_name}${count.index}"
  machine_type = var.db_machine_type
  count        = var.db_count
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = "${var.db_name}"
  }
  depends_on    = [google_compute_subnetwork.db_subnetwork]
}

resource "google_compute_instance" "redis_instance" {
  name         = "${var.env_name}-${var.name}-${var.redis_name}${count.index}"
  machine_type = var.redis_machine_type
  count        = var.redis_count
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = "${var.redis_name}"
  }
  depends_on    = [google_compute_subnetwork.redis_subnetwork]
}
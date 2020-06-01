resource "google_compute_instance" "foo_dev_ide_instance" {
  name         = "foo-dev-ide${count.index}"
  machine_type = var.ide_machine_type
  count        = 2
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = var.ide_subnetwork
  }
  depends_on    = [google_compute_subnetwork.ide_subnetwork]
}

resource "google_compute_instance" "foo_dev_pte_instance" {
  name         = "foo-dev-pte${count.index}"
  machine_type = var.pte_machine_type
  count        = 2
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = var.pte_subnetwork
  }
  depends_on    = [google_compute_subnetwork.pte_subnetwork]
}

resource "google_compute_instance" "foo_dev_dbptr_instance" {
  name         = "foo-dev-dbptr${count.index}"
  machine_type = var.dbptr_machine_type
  count        = 2
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = var.dbptr_subnetwork
  }
  depends_on    = [google_compute_subnetwork.dbptr_subnetwork]
}
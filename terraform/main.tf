provider "google" {
  credentials = "katana-sh-ee20a1608e98.json"
  project     = "molten-infusion-277321"
  region      = "us-central1"
  zone        = "us-central1-a"
}

resource "google_compute_network" "custom-katana-network" {                                                                                 
  name                    = "katana-network"                                                                                                
  auto_create_subnetworks = false                                                                                                           
}

resource "google_compute_subnetwork" "custom-a-katana-subnetwork" {
  name          = "a-katana-subnetwork"
  ip_cidr_range = "10.255.100.0/24"
  region        = "us-central1"
  network       = "katana-network"
}

resource "google_compute_subnetwork" "custom-b-katana-subnetwork" {
  name          = "b-katana-subnetwork"
  ip_cidr_range = "10.255.200.0/24"
  region        = "us-central1"
  network       = "katana-network"
}

resource "google_compute_instance" "vm-a-instance" {
  name         = "katana-sh-a-${count.index}"
  machine_type = "n1-standard-1"

  count        = 12

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  network_interface {
    subnetwork       = "a-katana-subnetwork"
  }
}

resource "google_compute_instance" "vm-b-instance" {
  name         = "katana-sh-b-${count.index}"
  machine_type = "n1-standard-1"

  count        = 12

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  network_interface {
    subnetwork       = "b-katana-subnetwork"
  }
}

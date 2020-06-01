region              = "us-central1"
zone                = "us-central1-a"

image               = "ubuntu-os-cloud/ubuntu-1804-lts"

network_name        = "foo-dev-network"

ide_subnetwork      = "foo-dev-ide-subnetwork"
ide_ip_cidr_range   = "10.0.1.0/24"
ide_machine_type    = "n1-standard-4"

pte_subnetwork      = "foo-dev-pte-subnetwork"
pte_ip_cidr_range   = "10.0.2.0/24"
pte_machine_type    = "n1-standard-4"

dbptr_subnetwork    = "foo-dev-dbptr-subnetwork"
dbptr_ip_cidr_range = "10.0.3.0/24"
dbptr_machine_type  = "n1-standard-4"

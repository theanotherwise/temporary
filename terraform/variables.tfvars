region              = "us-central1"
zone                = "us-central1-a"

name                = "foo"
env_name            = "dev"

image               = "ubuntu-os-cloud/ubuntu-1804-lts"

web_name            = "ide"
web_count           = 2
web_ip_cidr_range   = "10.0.1.0/24"
web_machine_type    = "n1-standard-2"

app_name            = "pte"
app_count           = 2
app_ip_cidr_range   = "10.0.2.0/24"
app_machine_type    = "n1-standard-2"

db_name             = "dbptr"
db_count            = 2
db_ip_cidr_range    = "10.0.3.0/24"
db_machine_type     = "n1-standard-2"

redis_name          = "redis"
redis_count         = 1
redis_ip_cidr_range = "10.0.4.0/24"
redis_machine_type  = "n1-standard-1"
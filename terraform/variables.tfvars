region              = "us-central1"
zone                = "us-central1-a"

name                = "robot"
env_name            = "test"

image               = "ubuntu-os-cloud/ubuntu-1804-lts"

ssh_keys_pub = <<EndOfMessage
theanotherwise:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDSW8+yW1Jk0iVU4+MWS/H7ExY5z+++jxfkDtTX0bIc+4OCwdsR/FsyR6xec3Mj/erS647QF9MLOZUnzdRrdolvnK3UagqEA93euP21vpUQYI2ICNyvShdL0IsW2lN5vwGLFUjl4SZOXyz3sMD30eN6EUq/FVrUxZip4DZR3s9onSsH/aDSJSSc9NmCCVdiaaFok8VYQcriH00WsRAbK8KdR1g5Cn0Nl+j+x3cYpJj3xN+eFQeZ8hunh1sx6JR5c+soBW/D9yT4EAT8+6itVnKZY3WEcgL2DD5yqkf+7RLH0pnrVk4sVjMumpwzg8SkA3Ww/HQTV32MGjdOTxlaHq6ud5NEp0fTWIPCXftFeoGGapY7kYhApvM7QAf6PI3rJZooysN0chQbJ1cjkw3BVFPPtSjsN4/3ZjocC5iU/WN7RJ5O/ey4SHeMDujEhRSWD/2FysjxvRIEtBSlYPP667d2cZXGupZJl9y0DfXcEcI7WvpS2nGHHRiHOqq+AKXHdFc= theanotherwise@zeta
EndOfMessage

web_name            = "web"
web_count           = 1
web_machine_type    = "n1-standard-8"
web_name_internal   = "web-private"
web_cidr_internal   = "10.0.10.0/24"

app_name            = "app"
app_count           = 1
app_machine_type    = "n1-standard-16"
app_name_internal   = "app-private"
app_cidr_internal   = "10.0.11.0/24"

db_name             = "db"
db_count            = 1
db_machine_type     = "n1-standard-32"
db_name_internal    = "db-private"
db_cidr_internal    = "10.0.12.0/24"


bastion_name          = "bastion"
bastion_machine_type  = "n1-standard-1"
bastion_name_internal = "bastion-private"
bastion_cidr_internal = "10.0.1.0/24"

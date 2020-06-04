variable "region" {
    type = string
}

variable "zone" {
    type = string
}

variable "name" {
    type = string
}

variable "env_name" {
    type = string
}

variable "image" {
    type = string
}

variable "ssh_keys_pub" {
    type = string
}

variable "web_name" {
    type = string
}

variable "web_count" {
    type = number
}

variable "web_name_internal" {
    type = string
}

variable "web_cidr_internal" {
    type = string
}

variable "web_machine_type" {
    type = string
}

variable "app_name" {
    type = string
}

variable "app_count" {
    type = string
}

variable "app_machine_type" {
    type = string
}

variable "app_name_internal" {
    type = string
}

variable "app_cidr_internal" {
    type = string
}

variable "db_name" {
    type = string
}

variable "db_count" {
    type = string
}

variable "db_machine_type" {
    type = string
}

variable "db_name_internal" {
    type = string
}

variable "db_cidr_internal" {
    type = string
}

variable "bastion_name" {
    type = string
}

variable "bastion_machine_type" {
    type = string
}

variable "bastion_name_internal" {
    type = string
}

variable "bastion_cidr_internal" {
    type = string
}
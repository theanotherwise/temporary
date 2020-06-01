variable "region" {
    type = string
}

variable "zone" {
    type = string
}

variable "image" {
    type = string
}

variable "network_name" {
    type = string
}

variable "ide_subnetwork" {
    type = string
}

variable "ide_ip_cidr_range" {
    type = string
}

variable "ide_machine_type" {
    type = string
}

variable "pte_subnetwork" {
    type = string
}

variable "pte_ip_cidr_range" {
    type = string
}

variable "pte_machine_type" {
    type = string
}

variable "dbptr_subnetwork" {
    type = string
}

variable "dbptr_ip_cidr_range" {
    type = string
}

variable "dbptr_machine_type" {
    type = string
}
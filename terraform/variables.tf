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

variable "web_name" {
    type = string
}

variable "web_count" {
    type = number
}

variable "web_ip_cidr_range" {
    type = string
}

variable "web_machine_type" {
    type = string
}

variable "app_name" {
    type = string
}

variable "app_count" {
    type = number
}

variable "app_ip_cidr_range" {
    type = string
}

variable "app_machine_type" {
    type = string
}

variable "db_name" {
    type = string
}

variable "db_count" {
    type = number
}

variable "db_ip_cidr_range" {
    type = string
}

variable "db_machine_type" {
    type = string
}

variable "redis_name" {
    type = string
}

variable "redis_count" {
    type = number
}

variable "redis_ip_cidr_range" {
    type = string
}

variable "redis_machine_type" {
    type = string
}
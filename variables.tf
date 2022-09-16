variable "name" {
  type = string
}

variable "source_bucket" {
  type    = string
  default = null
}

variable "source_dir" {
  type = string
}

variable "handler" {
  type = string
}

variable "runtime" {
  type = string
}

variable "timeout" {
  type = number
}

variable "memory_size" {
  type = number
}

variable "log_retention_in_days" {
  type = number
  default = 7
}

variable "environment" {
  type = map(string)
  default = {}
}

variable "vpc_config" {
  type = object({
    subnet_ids         = list(string)
    security_group_ids = list(string)
  })
  default = null
}

locals {
  module_name     = basename(abspath(path.module))
  lambda_zip_file = "${path.module}/${local.module_name}-${var.name}.zip"
}

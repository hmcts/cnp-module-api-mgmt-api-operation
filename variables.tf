variable "api_mgmt_rg" {
  description = "Resource group that api management is in, e.g. core-infra-demo"
}

variable "api_mgmt_name" {
  description = "Name of the api management, e.g. core-infra-demo"
}

variable "operation_id" {
  type        = string
  description = "Operations ID"
  default     = ""
}
variable "api_mgmt_api_name" {
  type        = string
  description = "API Name"
}
variable "display_name" {
  type        = string
  description = "Operation Display Name"
}
variable "method" {
  type        = string
  description = "REST Method"
  validation {
    condition     = var.method == "GET" || var.method == "PUT" || var.method == "POST" || var.method == "DELETE" || var.method == "UPDATE"
    error_message = "Must be a valid REST Method."
  }
}
variable "url_template" {
  type        = string
  description = "Template of the URL"
}
variable "description" {
  type        = string
  description = "Operation Description"
  default     = ""
}
variable "nested_datasets" {
  description = "List of dataset names"
  type        = list(string)
  default     = []
}

variable "base_url" {
  description = "Base URL of the TrueNAS server API"
  type        = string
}

variable "api_key" {
  description = "API key for authenticating to the TrueNAS server"
  type        = string
}

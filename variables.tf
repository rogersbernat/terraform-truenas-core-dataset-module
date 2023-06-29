variable "pool" {
  description = "Name of the pool"
  type        = string
}

variable "nested_datasets" {
  description = "List of dataset names"
  type        = list(string)
  default     = []
}

variable "parent_datasets" {
  type = map(list(string))
  default = {
  }
}

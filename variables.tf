variable "pool" {
  description = "Name of the pool"
  type        = string
}

variable "nested_datasets" {
  description = "List of dataset names"
  type        = list(string)
  default     = []
}

variable "parent_dataset_name" {
  description = "Name of the parent dataset"
  type        = string
}

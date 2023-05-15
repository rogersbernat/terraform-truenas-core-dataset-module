output "parent_dataset_id" {
  value = truenas_dataset.parent_dataset.id
}

output "nested_dataset_ids" {
  value = [for key, dataset in truenas_dataset.nested_datasets : dataset.id]
}

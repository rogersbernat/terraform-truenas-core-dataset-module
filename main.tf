resource "truenas_dataset" "parent_dataset" {
  pool = var.pool
  name = var.parent_dataset_name
}

resource "truenas_dataset" "nested_datasets" {
  for_each = toset(var.nested_datasets)

  pool   = var.pool
  name   = each.value
  parent = truenas_dataset.parent_dataset.name
}

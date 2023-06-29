resource "truenas_dataset" "parent_datasets" {
  for_each = toset(var.parent_datasets)

  pool = var.pool
  name = each.value
}

resource "truenas_dataset" "nested_datasets" {
  for_each = { for pd in truenas_dataset.parent_datasets : pd.key => toset(pd.value.nested_datasets) }

  pool   = var.pool
  name   = each.value
  parent = truenas_dataset.parent_datasets[each.key].name
}

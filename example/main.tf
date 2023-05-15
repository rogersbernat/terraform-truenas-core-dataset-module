module "datasets" {
  source              = "../"
  pool                = "dummy"
  parent_dataset_name = "Videos"
  nested_datasets     = ["Movies", "Series", "Documentaries"]
}
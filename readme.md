```markdown
# Terraform TrueNAS Datasets Module

This Terraform module creates datasets and nested datasets in a TrueNAS Core.

## Features

- Creates a parent dataset and nested datasets inside it
- Supports specifying the dataset names and pool

## Usage

In the folder examples, you can find an example of using this module to create datasets.

```hcl
module "datasets" {
  source               = "github.com/rogersbernat/terraform-truenas-core-dataset-module"
  pool                 = "your-pool"
  parent_dataset_name  = "parent_dataset"
  nested_datasets      = ["nested_dataset_1", "nested_dataset_2", "nested_dataset_3"]
}
```

To apply this configuration, follow these steps:

In the folder examples, you can find an example of using this module to create datasets. Follow these steps to apply the example configuration:

1. Set up your Terraform environment.
2. Create a new Terraform configuration file (e.g., `main.tf`).
3. Copy the contents of the `main.tf` file from the examples folder into your new Terraform configuration file.
4. Modify the values of the `pool`, `parent_dataset_name`, and `nested_datasets` according to your requirements.
5. Run `terraform init` to initialize the Terraform working directory.
6. Run `terraform apply` to create the datasets in your TrueNAS Core.

Make sure to replace `"github.com/your-username/terraform-truenas-datasets"` with the actual source URL of the module.

## Requirements

- Terraform >= 1.4.6
- TrueNAS provider plugin dariusbakunas/truenas 0.11.1

## Inputs

- `pool` (string): The name of the pool where the datasets will be created.
- `parent_dataset_name` (string): The name of the parent dataset.
- `nested_datasets` (list(string)): A list of names for the nested datasets.

## Outputs

- `parent_dataset_id` (string): The ID of the parent dataset.
- `nested_dataset_ids` (list(string)): A list of IDs for the nested datasets.

I hope this helps you! Let me know if you have any further questions.
```
```

Please note that the example code assumes you have a properly set up Terraform environment and have the required TrueNAS provider plugin installed.

Let me know if you have any further questions or need additional assistance!
````markdown

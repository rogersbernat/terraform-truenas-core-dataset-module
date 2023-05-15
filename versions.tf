terraform {
  required_version = ">= 1.4.6"
  required_providers {
    truenas = {
      source  = "dariusbakunas/truenas"
      version = "0.11.1"
    }
  }
}

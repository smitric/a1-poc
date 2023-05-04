terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      #version = "=2.46.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "tfstate"
      storage_account_name = "terraformtfstate0405"
      container_name       = "a1poc"
      key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}
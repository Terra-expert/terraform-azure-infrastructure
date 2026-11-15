terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "6e1a1565-07f4-4313-9586-7c4966345c3c"

}


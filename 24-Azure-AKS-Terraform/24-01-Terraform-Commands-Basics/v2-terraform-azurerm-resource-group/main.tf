terraform {
  required_version = ">= 1.14.3"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.112"
    }
  }
}

provider "azurerm" {
  features {}
  # Optionally set this if not relying on Azure CLI:
  # subscription_id = "76ef62c4-a0b6-444e-abb0-f49f4ab60346"
}

# Create a Azure Resource Group
resource "azurerm_resource_group" "aks-rg2" {
  subscriptions_id = "76ef62c4-a0b6-444e-abb0-f49f4ab60346"
  name     = "aks-rg2-tf"
  location = "Central US"

# Add Tags
#  tags = {
#    "environment" = "k8sdev"
#    "demotag"     = "refreshtest"
#  }

}


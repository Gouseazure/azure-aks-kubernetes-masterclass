# Configure Azure Provider
provider "azurerm" {
  # Version is optional
  # Terraform recommends to pin to a specific version of provider
  #version = "=2.35.0"
  #version = "~>2.35.0"
  #version = "~> 2.37.0"
  features {}
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


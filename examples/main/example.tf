
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}

module "shared_image_gallery" {
  source                    = "../.."
  shared_image_gallery_name = "example-sig"
  prefixes                  = ["az", "eus1"]
  suffixes                  = ["dev", "01"]
  resource_group_name       = azurerm_resource_group.example.name
  location                  = azurerm_resource_group.example.location
  description               = "Example Shared Image Gallery"
  tags = {
    environment = "development"
  }
}
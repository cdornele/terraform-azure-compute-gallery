
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
  shared_images_definitions = [
    {
      name = "24_10"
      identifier = {
        offer     = "ubuntu-24_04-lts"
        publisher = "Canonical"
        sku       = "ubuntu-pro"
      }
      os_type     = "Linux"
      description = "Ubuntu 24.04 LTS Pro"
    }
  ]
}
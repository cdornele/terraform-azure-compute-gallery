#--------------------------------------------*--------------------------------------------
#  Module: Azure Shared Image Compute Gallery - Main
#--------------------------------------------*--------------------------------------------

resource "azurerm_shared_image_gallery" "this" {
  name                = var.shared_image_gallery_name
  resource_group_name = var.resource_group_name
  location            = var.location
  description         = var.description
  tags                =  var.tags
}



# end
#--------------------------------------------*--------------------------------------------
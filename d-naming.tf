#--------------------------------------------*--------------------------------------------
#  Module: Azure Shared Image Compute Gallery - Naming
#--------------------------------------------*--------------------------------------------

data "azurecaf_name" "shared_image_gallery" {
  name          = var.shared_image_gallery_name
  resource_type = "azurerm_shared_image_gallery"
  prefixes      = var.prefixes
  suffixes      = var.suffixes
  use_slug      = true
  clean_input   = true
  separator     = "-"
}

# end
#--------------------------------------------*--------------------------------------------
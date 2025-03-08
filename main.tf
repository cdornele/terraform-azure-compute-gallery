#--------------------------------------------*--------------------------------------------
#  Module: Azure Shared Image Compute Gallery - Main
#--------------------------------------------*--------------------------------------------

resource "azurerm_shared_image_gallery" "this" {
  name                = data.azurecaf_name.shared_image_gallery.result
  resource_group_name = var.resource_group_name
  location            = var.location
  description         = var.description
  tags                = var.tags

  dynamic "sharing" {
    for_each = var.community_gallery[*]
    content {
      permission = "Community"

      community_gallery {
        eula            = sharing.value.eula
        prefix          = sharing.value.prefix
        publisher_email = sharing.value.publisher_email
        publisher_uri   = sharing.value.publisher_uri
      }
    }
  }
}



# end
#--------------------------------------------*--------------------------------------------
#--------------------------------------------*--------------------------------------------
#  Module: Azure Shared Image Compute Gallery - Output
#--------------------------------------------*--------------------------------------------

output "shared_image_gallery_id" {
  description = "The ID of the Shared Image Gallery"
  value       = azurerm_shared_image_gallery.this.id
}

# end
#--------------------------------------------*--------------------------------------------
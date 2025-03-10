#--------------------------------------------*--------------------------------------------
#  Module: Azure Shared Image Compute Gallery - Output
#--------------------------------------------*--------------------------------------------

output "shared_image_gallery_id" {
  description = "The ID of the Shared Image Gallery"
  value       = azurerm_shared_image_gallery.this.id
}


output "shared_images_definitions" {
  description = "A list of Shared Image definitions created in the Shared Image Gallery"
  value       = azurerm_shared_image.this
}

# end
#--------------------------------------------*--------------------------------------------
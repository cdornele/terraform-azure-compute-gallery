#--------------------------------------------*--------------------------------------------
#  Module: Azure Shared Image Compute Gallery - Variables
#--------------------------------------------*--------------------------------------------

variable "shared_image_gallery_name" {
  description = "The name of the Shared Image Gallery"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Shared Image Gallery will be created"
  type        = string
}

variable "location" {
  description = "The location of the Shared Image Gallery"
  type        = string
}

variable "description" {
  description = "The description of the Shared Image Gallery"
  type        = string
  default     = "Shared Image Gallery created by Terraform"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

# end
#--------------------------------------------*--------------------------------------------
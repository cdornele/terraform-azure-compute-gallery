#--------------------------------------------*--------------------------------------------
#  Module: Azure Shared Image Compute Gallery - Variables
#--------------------------------------------*--------------------------------------------

variable "shared_image_gallery_name" {
  description = "The name of the Shared Image Gallery"
  type        = string
}

variable "prefixes" {
  description = "A mapping of prefixes to assign to the resource."
  type        = list(string)
  default     = []
}

variable "suffixes" {
  description = "A mapping of suffixes to assign to the resource."
  type        = list(string)
  default     = []
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

variable "community_gallery" {
  description = "Configure the Shared Image Gallery as a Community Gallery."
  type = object({
    eula            = string
    prefix          = string
    publisher_email = string
    publisher_uri   = string
  })
  default = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

# end
#--------------------------------------------*--------------------------------------------
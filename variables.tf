#--------------------------------------------*--------------------------------------------
#  Module: Azure Shared Image Compute Gallery - Variables
#--------------------------------------------*--------------------------------------------

variable "shared_image_gallery_name" {
  description = "The name of the Shared Image Gallery"
  type        = string
}

variable "shared_images_definitions" {
  description = "A list of Shared Image definitions to create in the Shared Image Gallery"
  type = list(object({
    name = string
    identifier = object({
      offer     = string
      publisher = string
      sku       = string
    })
    os_type                             = string
    description                         = optional(string)
    disk_types_not_allowed              = optional(list(string))
    end_of_life_date                    = optional(string)
    eula                                = optional(string)
    specialized                         = optional(bool)
    architecture                        = optional(string, "x64")
    hyper_v_generation                  = optional(string, "V1")
    max_recommended_vcpu_count          = optional(number)
    min_recommended_vcpu_count          = optional(number)
    max_recommended_memory_in_gb        = optional(number)
    min_recommended_memory_in_gb        = optional(number)
    privacy_statement_uri               = optional(string)
    release_note_uri                    = optional(string)
    trusted_launch_enabled              = optional(bool)
    trusted_launch_supported            = optional(bool)
    confidential_vm_supported           = optional(bool)
    confidential_vm_enabled             = optional(bool)
    accelerated_network_support_enabled = optional(bool)
    tags                                = optional(map(string))
  }))
  default = []
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
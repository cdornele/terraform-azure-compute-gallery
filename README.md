<!-- BEGIN_TF_DOCS -->
## Version compatibility by CD Azure Modules

| Module version | Terraform version | AzureRM version |
| -------------- | ----------------- | --------------- |
| >= 7.x.x       | 1.3.x             | >= 3.0          |
| >= 6.x.x       | 1.x               | >= 3.0          |
| >= 5.x.x       | 0.15.x            | >= 2.0          |
| >= 4.x.x       | 0.13.x / 0.14.x   | >= 2.0          |
| >= 3.x.x       | 0.12.x            | >= 2.0          |
| >= 2.x.x       | 0.12.x            | < 2.0           |
| <  2.x.x       | 0.11.x            | < 2.0           |

## Contributing

If you’d like to contribute to this repository, you’re welcome to use our pre-commit Git hook configuration. It helps automate file updates and formatting while ensuring compliance with our Terraform module best practices.

For more details, check out the CONTRIBUTING.md file.

## Usage

```hcl

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
```

## Providers

| Name | Version |
|------|---------|
| azurecaf | 2.0.0-preview3 |
| azurerm | ~> 4.10 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_shared_image.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/shared_image) | resource |
| [azurerm_shared_image_gallery.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/shared_image_gallery) | resource |
| [azurecaf_name.shared_image_gallery](https://registry.terraform.io/providers/aztfmod/azurecaf/2.0.0-preview3/docs/data-sources/name) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| community\_gallery | Configure the Shared Image Gallery as a Community Gallery. | <pre>object({<br/>    eula            = string<br/>    prefix          = string<br/>    publisher_email = string<br/>    publisher_uri   = string<br/>  })</pre> | `null` | no |
| description | The description of the Shared Image Gallery | `string` | `"Shared Image Gallery created by Terraform"` | no |
| location | The location of the Shared Image Gallery | `string` | n/a | yes |
| prefixes | A mapping of prefixes to assign to the resource. | `list(string)` | `[]` | no |
| resource\_group\_name | The name of the resource group in which the Shared Image Gallery will be created | `string` | n/a | yes |
| shared\_image\_gallery\_name | The name of the Shared Image Gallery | `string` | n/a | yes |
| shared\_images\_definitions | A list of Shared Image definitions to create in the Shared Image Gallery | <pre>list(object({<br/>    name = string<br/>    identifier = object({<br/>      offer     = string<br/>      publisher = string<br/>      sku       = string<br/>    })<br/>    os_type                             = string<br/>    description                         = optional(string)<br/>    disk_types_not_allowed              = optional(list(string))<br/>    end_of_life_date                    = optional(string)<br/>    eula                                = optional(string)<br/>    specialized                         = optional(bool)<br/>    architecture                        = optional(string, "x64")<br/>    hyper_v_generation                  = optional(string, "V1")<br/>    max_recommended_vcpu_count          = optional(number)<br/>    min_recommended_vcpu_count          = optional(number)<br/>    max_recommended_memory_in_gb        = optional(number)<br/>    min_recommended_memory_in_gb        = optional(number)<br/>    privacy_statement_uri               = optional(string)<br/>    release_note_uri                    = optional(string)<br/>    trusted_launch_enabled              = optional(bool)<br/>    trusted_launch_supported            = optional(bool)<br/>    confidential_vm_supported           = optional(bool)<br/>    confidential_vm_enabled             = optional(bool)<br/>    accelerated_network_support_enabled = optional(bool)<br/>    tags                                = optional(map(string))<br/>  }))</pre> | `[]` | no |
| suffixes | A mapping of suffixes to assign to the resource. | `list(string)` | `[]` | no |
| tags | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| shared\_image\_gallery\_id | The ID of the Shared Image Gallery |
| shared\_images\_definitions | A list of Shared Image definitions created in the Shared Image Gallery |
<!-- END_TF_DOCS -->
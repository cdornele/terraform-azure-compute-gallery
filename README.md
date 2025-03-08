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
  resource_group_name       = azurerm_resource_group.example.name
  location                  = azurerm_resource_group.example.location
  description               = "Example Shared Image Gallery"
  tags = {
    environment = "development"
  }
}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | ~> 4.10 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_shared_image_gallery.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/shared_image_gallery) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| community\_gallery | Configure the Shared Image Gallery as a Community Gallery. | <pre>object({<br/>    eula            = string<br/>    prefix          = string<br/>    publisher_email = string<br/>    publisher_uri   = string<br/>  })</pre> | `null` | no |
| description | The description of the Shared Image Gallery | `string` | `"Shared Image Gallery created by Terraform"` | no |
| location | The location of the Shared Image Gallery | `string` | n/a | yes |
| resource\_group\_name | The name of the resource group in which the Shared Image Gallery will be created | `string` | n/a | yes |
| shared\_image\_gallery\_name | The name of the Shared Image Gallery | `string` | n/a | yes |
| tags | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| shared\_image\_gallery\_id | The ID of the Shared Image Gallery |
<!-- END_TF_DOCS -->
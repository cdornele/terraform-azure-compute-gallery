<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.10 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 4.10 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_shared_image_gallery.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/shared_image_gallery) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the Shared Image Gallery | `string` | `"Shared Image Gallery created by Terraform"` | no |
| <a name="input_location"></a> [location](#input\_location) | The location of the Shared Image Gallery | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which the Shared Image Gallery will be created | `string` | n/a | yes |
| <a name="input_shared_image_gallery_name"></a> [shared\_image\_gallery\_name](#input\_shared\_image\_gallery\_name) | The name of the Shared Image Gallery | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_shared_image_gallery_id"></a> [shared\_image\_gallery\_id](#output\_shared\_image\_gallery\_id) | The ID of the Shared Image Gallery |
<!-- END_TF_DOCS -->
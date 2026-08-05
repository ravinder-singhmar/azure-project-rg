resource "azurerm_resource_group" "devrg" {
  for_each = var.rgdetails
  name     = each.value.name
  location = each.value.location


}

module "rg" {
  source    = "../modules/azurerm_resource_group"
  rgdetails = var.rgdetails
}

module "vnet" {
  source      = "../modules/azurerm_virtual_network"
  vnetdetails = var.vnetdetails
  depends_on  = [module.rg]
}
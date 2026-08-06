rgdetails = {
  rg1 = {
    name     = "dev-rg1"
    location = "East US"
  }
  rg2 = {
    name     = "dev-rg2"
    location = "East US"
  }
}

vnetdetails = {
  vnet1 = {
    name                = "dev-vnet1"
    location            = "East US"
    resource_group_name = "dev-rg1"
    address_space       = ["10.0.0.0/16"]
  }
  vnet2 = {
    name                = "dev-vnet2"
    location            = "west US"
    resource_group_name = "dev-rg2"
    address_space       = ["10.0.0.0/16"]
  }
}
resource "azurerm_network_interface" "nic" {
  for_each            = var.nics
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet_block[each.key].id
    private_ip_address_allocation = each.value.private_ip_address_allocation
    public_ip_address_id          = data.azurerm_public_ip.pip_block[each.key].id
  }
}


data "azurerm_subnet" "subnet_block" {
  for_each = var.nics

  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "pip_block" {
  for_each = var.nics

  name                = each.value.public_ip_name
  resource_group_name = each.value.resource_group_name
}

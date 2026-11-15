rgs = {
  rg1 = {
    name     = "diwali_rg1"
    location = "eastus"
  }

  rg2 = {
    name     = "diwali_rg2"
    location = "eastus"
  }
}


vnets = {
  vnet1 = {
    name                = "diwali_vnet1"
    location            = "eastus"
    resource_group_name = "diwali_rg1"
    address_space       = ["10.0.0.0/16"]

  }

  vnet2 = {
    name                = "diwali_vnet2"
    location            = "eastus"
    resource_group_name = "diwali_rg2"
    address_space       = ["10.0.0.0/16"]

  }
}

subnets = {
  subnet1 = {
    name                 = "diwali_subnet1"
    resource_group_name  = "diwali_rg1"
    virtual_network_name = "diwali_vnet1"
    address_prefixes     = ["10.0.0.0/24"]
  }

  subnet2 = {
    name                 = "diwali_subnet2"
    resource_group_name  = "diwali_rg2"
    virtual_network_name = "diwali_vnet2"
    address_prefixes     = ["10.0.0.0/24"]
  }
}

pips = {
  pip1 = {
    name                = "diwali_pip1"
    resource_group_name = "diwali_rg1"
    location            = "eastus"
    allocation_method   = "Static"
  }

  pip2 = {
    name                = "diwali_pip2"
    resource_group_name = "diwali_rg2"
    location            = "eastus"
    allocation_method   = "Static"

  }
}

nics = {
  nic1 = {
    nic_name                      = "diwali-nic1"
    location                      = "centralindia"
    resource_group_name           = "diwali_rg1"
    subnet_name                   = "diwali_subnet1"
    virtual_network_name          = "diwali_vnet1"
    private_ip_address_allocation = "Dynamic"
    public_ip_name                = "diwali-pip1"
  }

  nic2 = {
    nic_name                      = "diwali-nic2"
    location                      = "centralindia"
    resource_group_name           = "diwali_rg1"
    subnet_name                   = "diwali_subnet1"
    virtual_network_name          = "diwali_vnet1"
    private_ip_address_allocation = "Dynamic"
    public_ip_name                = "diwali-pip2"
  }
}


vms = {
  vm1 = {
    vm_name              = "diwali_vm1"
    resource_group_name  = "diwali_rg1"
    location             = "eastus"
    size                 = "Standard_D4_v5"
    admin_username       = "adminuser"
    admin_password       = "Satya@123"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-jammy"
    sku                  = "22_04-lts"
    version              = "latest"
    nic_name             = "diwali-nic1"
  }

  vm2 = {
    vm_name              = "diwali_vm2"
    resource_group_name  = "diwali_rg2"
    location             = "eastus"
    size                 = "Standard_D4_v5"
    admin_username       = "adminuser"
    admin_password       = "Satya@123"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-jammy"
    sku                  = "22_04-lts"
    version              = "latest"
    nic_name             = "diwali-nic2"
  }
}

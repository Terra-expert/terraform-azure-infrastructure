
variable "vms" {
  type = map(object({
    vm_name              = string
    resource_group_name  = string
    location             = string
    size                 = string
    admin_username       = string
    admin_password       = string
    caching              = string
    storage_account_type = string
    publisher            = string
    offer                = string
    sku                  = string
    version              = string
    nic_name             = string
  }))
}




module "rgs" {
  source = "../../module/azurerm_resource_group"
  rgs    = var.rgs
}

# module "vnets" {
#   depends_on = [module.rgs]
#   source     = "../../module/azurerm_vnet"
#   vnets      = var.vnets

# }

# module "subnets" {
#   source     = "../../module/azurerm_subnet"
#   depends_on = [module.vnets]

#   subnets = var.subnets
# }

# module "pips" {
#   source     = "../../module/azurerm_pip"
#   depends_on = [module.rgs]

#   pips = var.pips
# }

# module "nics" {
#   source = "../../module/azurerm_nic"

#   depends_on = [
#     module.subnets,
#     module.pips
#   ]

#   nics = var.nics
# }


# module "vms" {
#   depends_on = [module.rgs, module.vnets, module.subnets, module.pips, module.nics]
#   source     = "../../module/azurerm_vm"
#   vms        = var.vms
# }




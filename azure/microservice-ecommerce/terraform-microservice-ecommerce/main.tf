provider "azurerm" {
  version         = "=1.24.0"
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}

resource "azurerm_resource_group" "k8s" {
  name     = "${var.resource_group}"
  location = "${var.resource_group_location}"
}

module "vpc" {
  source                  = "./vpc"
  name                    = "${var.cluster_name}"
  resource_group_location = "${azurerm_resource_group.k8s.location}"
  resource_group          = "${azurerm_resource_group.k8s.name}"
}

module "aks" {
  source              = "./aks"
  resource_group_location = "${azurerm_resource_group.k8s.location}"
  resource_group          = "${azurerm_resource_group.k8s.name}"
  cluster_name            = "${var.cluster_name}"
  vm_size                 = "${var.vm_size}"
  node_count              = "${var.node_count}"
  admin_username          = "${var.admin_username}"
  client_id               = "${var.client_id}"
  client_secret           = "${var.client_secret}"
  dns_prefix              = "${var.dns_prefix}"
  subnet_id               = "${module.vpc.subnet_id}"
}

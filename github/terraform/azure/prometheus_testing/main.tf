resource "azurerm_resource_group" "prometheus_aks_rg" {
  name     = "prometheus_aks_rg"
  location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "prometheus_poc" {
  name                = "prometheus_poc"
  location            = azurerm_resource_group.prometheus_aks_rg.location
  resource_group_name = azurerm_resource_group.prometheus_aks_rg.name
  dns_prefix          = "prompoc1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {}
}

resource "azurerm_monitor_action_group" "prometheus_action_group" {
  name                = "prometheus_poc"
  resource_group_name = azurerm_resource_group.prometheus_aks_rg.name
  short_name          = "testag"
}

resource "azurerm_monitor_workspace" "prometheus_poc" {
  name                = "prometheus-workspace"
  resource_group_name = azurerm_resource_group.prometheus_aks_rg.name
  location            = azurerm_resource_group.prometheus_aks_rg.location
}

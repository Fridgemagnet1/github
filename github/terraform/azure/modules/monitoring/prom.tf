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
provider "azurerm" {
    features {
      
    }
  
}
resource "azurerm_resource_group" "rg" {
    name = "harshu"
    location = "west europe"
  
}
resource "azurerm_virtual_network" "vnet" {
    name = "vnet-01"
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    address_space = [ "10.1.0.0/16" ]
  
}
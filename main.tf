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
resource "azurerm_subnet" "subnet" {
    name ="subnet01"
    resource_group_name = azurerm_resource_group.rg.name
    address_prefixes = [ "10.1.1.0/24" ]
    virtual_network_name = azurerm_virtual_network.vnet.name
  
}
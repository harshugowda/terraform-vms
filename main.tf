provider "azurerm" {
    features {
      
    }
  
}
resource "azurerm_resource_group" "rg" {
    name = "harshu"
    location = "west europe"
  
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.111.0"
    }
  }

}
provider "azurerm" {
  features {

  }

}


# terraform {
#   backend "azurerm" {
#     resource_group_name  = "rm_rgs1" 
#     storage_account_name = "rmsa11"                     
#     container_name       = "rmca1"                      
#     key                  = "dev.tfstate"       
#     use_azuread_auth     = true                          
#   }
# }



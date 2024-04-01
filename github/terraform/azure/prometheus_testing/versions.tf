terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.97.1"
    }
  }
}

provider "azurerm" {
    tenant_id = "84eafbe8-47ae-4ecd-b965-2675269fc1cd"
    subscription_id = "50ea53c9-1f4e-41ad-97e5-ec79b504a73e"
    skip_provider_registration = true
    features {
    }
}
provider "azurerm" {
  skip_provider_registration = true
  features {}
}

resource "azurerm_kubernetes_cluster" "default" {
  name                = "victor-aks"
  location            = "UK South"
  resource_group_name = "fe-testing"
  dns_prefix          = "victor-k8s"

  default_node_pool {
    name            = "default"
    node_count      = 1
    vm_size         = "Standard_D8s_v3"
    os_disk_size_gb = 100
  }

  service_principal {
    client_id     = var.appId
    client_secret = var.password
  }

  role_based_access_control {
    enabled = true
  }

  addon_profile {
    kube_dashboard {
      enabled = true
    }
  }

  tags = {
    environment = "owner: victor"
  }
}

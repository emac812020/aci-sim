
resource "aci_tenant" "GET-HK" {
  name        = "GET-HK"    
}

resource "aci_bridge_domain" "BD-1" {
  tenant_dn   = "${aci_tenant.GET-HK.id}"
  name        = "BD-1"
  description = "This bridge domain is created by the Terraform ACI provider"
}

resource "aci_subnet" "demosubnet" {
  parent_dn                    = "${aci_bridge_domain.BD-1.id}"
  ip                                  = "172.16.1.1/24"
# scope                               = "private"
  description                         = "This subject is created by Terraform v3"
}


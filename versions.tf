terraform {
  required_providers {
    aci = {
      source = "CiscoDevnet/aci"
      version = "0.7.0"
    }
  }
  required_version = ">= 0.13.4"
}

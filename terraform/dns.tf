resource "azurerm_dns_zone" "main" {
  name                = "${var.domain_name}"
  resource_group_name = "dns"
}

resource "azurerm_dns_a_record" "at_record" {
  name                = "@"
  zone_name           = "${azurerm_dns_zone.main.name}"
  resource_group_name = "${azurerm_dns_zone.main.resource_group_name}"
  ttl                 = 60
  records             = ["${azurerm_public_ip.main.ip_address}"]
}

resource "azurerm_dns_a_record" "www_record" {
  name                = "www"
  zone_name           = "${azurerm_dns_zone.main.name}"
  resource_group_name = "${azurerm_dns_zone.main.resource_group_name}"
  ttl                 = 60
  records             = ["${azurerm_public_ip.main.ip_address}"]
}

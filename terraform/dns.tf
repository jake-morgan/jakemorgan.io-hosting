resource "azurerm_dns_a_record" "at_record" {
  name                = "@"
  zone_name           = "${var.domain_name}"
  resource_group_name = "dns"
  ttl                 = 60
  records             = ["${azurerm_public_ip.main.ip_address}"]
  depends_on          = ["azurerm_public_ip.main"]
}

resource "azurerm_dns_a_record" "www_record" {
  name                = "www"
  zone_name           = "${var.domain_name}"
  resource_group_name = "dns"
  ttl                 = 60
  records             = ["${azurerm_public_ip.main.ip_address}"]
  depends_on          = ["azurerm_public_ip.main"]
}

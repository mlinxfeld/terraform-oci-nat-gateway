resource "oci_core_subnet" "FoggyKitchenPrivateSubnet1" {
  availability_domain = "${var.ADs[0]}"
  cidr_block = "10.0.1.0/24"
  display_name = "Foggy Kitchen Private Subnet1"
  dns_label = "fkprivsub1"
  compartment_id = "${var.compartment_ocid}"
  vcn_id = "${oci_core_virtual_network.FoggyKitchenVCN.id}"
  route_table_id = "${oci_core_route_table.FoggyKitchenPrivateRouteTable1.id}"
  dhcp_options_id = "${oci_core_dhcp_options.FoggyKitchenDhcpOptions1.id}"
  security_list_ids = ["${oci_core_security_list.FoggyKitchenPrivateSSHSecurityList.id}"]
  prohibit_public_ip_on_vnic = "true"
}


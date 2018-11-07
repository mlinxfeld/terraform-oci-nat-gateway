resource "oci_core_subnet" "FoggyKitchenPublicSubnet1" {
  availability_domain = "${var.ADs[0]}"
  cidr_block = "10.0.2.0/24"
  display_name = "Foggy Kitchen Public Subnet1"
  dns_label = "fkpubsub1"
  compartment_id = "${var.compartment_ocid}"
  vcn_id = "${oci_core_virtual_network.FoggyKitchenVCN.id}"
  route_table_id = "${oci_core_route_table.FoggyKitchenPublicRouteTable1.id}"
  dhcp_options_id = "${oci_core_dhcp_options.FoggyKitchenDhcpOptions1.id}"
  security_list_ids = ["${oci_core_security_list.FoggyKitchenPublicSSHSecurityList.id}"]
  prohibit_public_ip_on_vnic = "false"
}


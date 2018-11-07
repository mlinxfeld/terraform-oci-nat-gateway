resource "oci_core_nat_gateway" "FoggyKitchenNatGateway" {
    compartment_id = "${var.compartment_ocid}"
    display_name = "Foggy Kitchen NAT Gateway"
    vcn_id = "${oci_core_virtual_network.FoggyKitchenVCN.id}"
}

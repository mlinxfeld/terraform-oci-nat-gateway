resource "oci_core_route_table" "FoggyKitchenPrivateRouteTable1" {
    compartment_id = "${var.compartment_ocid}"
    vcn_id = "${oci_core_virtual_network.FoggyKitchenVCN.id}"
    display_name = "Foggy Kitchen Private Route Table"
    route_rules {
        destination = "0.0.0.0/0"
        destination_type  = "CIDR_BLOCK"
        network_entity_id = "${oci_core_nat_gateway.FoggyKitchenNatGateway.id}"
    }
}

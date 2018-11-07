resource "oci_core_route_table" "FoggyKitchenPublicRouteTable1" {
    compartment_id = "${var.compartment_ocid}"
    vcn_id = "${oci_core_virtual_network.FoggyKitchenVCN.id}"
    display_name = "Foggy Kitchen Public Route Table"
    route_rules {
        destination = "0.0.0.0/0"
        destination_type  = "CIDR_BLOCK"
        network_entity_id = "${oci_core_internet_gateway.FoggyKitchenInternetGateway.id}"
    }
}


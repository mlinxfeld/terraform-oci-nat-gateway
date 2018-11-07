resource "oci_core_security_list" "FoggyKitchenSSHSecurityList" {
    compartment_id = "${var.compartment_ocid}"
    display_name = "Foggy Kitchen SSH Security List"
    vcn_id = "${oci_core_virtual_network.FoggyKitchenVCN.id}"
    egress_security_rules = [{
	protocol = "6"
        destination = "0.0.0.0/0"
    }]
    ingress_security_rules = [{
        tcp_options {
            "max" = 22
            "min" = 22
        }
        protocol = "6"
        source = "0.0.0.0/0"
    },
	{
	protocol = "6"
        source = "${var.VPC-CIDR}"
    }]	
}

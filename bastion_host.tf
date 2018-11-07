resource "oci_core_instance" "FoggyKitchenBastion1" {
  availability_domain = "${var.ADs[0]}"
  compartment_id = "${var.compartment_ocid}"
  display_name = "Foggy Kitchen Bastion1"
  shape = "${var.Shapes[0]}"
  subnet_id = "${oci_core_subnet.FoggyKitchenPublicSubnet1.id}"
  source_details {
    source_type = "image"
    source_id   = "${var.Images[0]}"
  } 
  metadata {
      ssh_authorized_keys = "${file("${var.public_key_oci}")}"
  }
  create_vnic_details {
    subnet_id = "${oci_core_subnet.FoggyKitchenPublicSubnet1.id}"
    assign_public_ip = true 
  }
}

data "oci_core_vnic_attachments" "FoggyKitchenBastion1_VNIC1_attach" {
    compartment_id = "${var.compartment_ocid}"
    availability_domain = "${var.ADs[0]}"
    instance_id = "${oci_core_instance.FoggyKitchenBastion1.id}"
}

data "oci_core_vnic" "FoggyKitchenBastion1_VNIC1" {
  vnic_id = "${lookup(data.oci_core_vnic_attachments.FoggyKitchenBastion1_VNIC1_attach.vnic_attachments[0],"vnic_id")}"
}

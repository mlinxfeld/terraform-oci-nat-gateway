resource "null_resource" "YumUpdateOneWebserver1" {
 depends_on = ["oci_core_instance.FoggyKitchenWebserver1","oci_core_instance.FoggyKitchenBastion1"]
 provisioner "remote-exec" {
        connection {
                type     = "ssh"
                user     = "opc"
		host     = "${data.oci_core_vnic.FoggyKitchenWebserver1_VNIC1.private_ip_address}"
                private_key = "${file("${var.private_key_oci}")}"
                script_path = "/home/opc/myssh.sh"
                agent = "false"
                timeout = "10m"
                bastion_host = "${data.oci_core_vnic.FoggyKitchenBastion1_VNIC1.public_ip_address}"
                bastion_port = "22"
                bastion_user = "opc"
                bastion_private_key = "${file("${var.private_key_oci}")}"
        }
  inline = ["echo '== 1. Yum update'",
            "sudo -u root yum -y update"]
  }
}

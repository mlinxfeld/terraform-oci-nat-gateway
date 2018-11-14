variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "compartment_ocid" {}
variable "region" {}
variable "private_key_oci" {}
variable "public_key_oci" {}

variable "VCN-CIDR" {
  default = "10.0.0.0/16"
}

variable "VCNname" {
  default = "FoggyKitchenVCN"
}

variable "NATPrivateIP4Forwarding" {
  default = "10.0.3.3"
}


variable "ADs" {
  default = ["mmXc:PHX-AD-1", "mmXc:PHX-AD-2", "mmXc:PHX-AD-3"]
}

variable "Shapes" {
 default = ["VM.Standard1.1","VM.Standard1.2","VM.Standard1.4","VM.Standard1.8","VM.Standard1.4","VM.Standard1.16","BM.HighIO1.36","BM.DenseIO1.36","BM.RACLocalStorage1.72","Exadata.Quarter1.84","Exadata.Half1.168","Exadata.Full1.336"]
}

variable "Images" {
 # Oracle-Linux-7.5-2018.10.16-0 in PHX 
 default = ["ocid1.image.oc1.phx.aaaaaaaaoqj42sokaoh42l76wsyhn3k2beuntrh5maj3gmgmzeyr55zzrwwa"]
}


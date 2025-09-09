variable "vsphere_datacenter" {
    default = "KMA_Datacenter"
}

variable "vsphere_datastore" {
    default = "KMA-SAN-02 (1)"
}

variable "vsphere_compute_cluster" {
    default = "KMAHQ_Cluster_01"
}

variable "vsphere_network" {
    default = "VM Network"
  
}

variable "vsphere_user" {
    default = { sensitive =true }
}

variable "vsphere_password" {
    default = { sensitive =true }
}

variable "vsphere_server" {
    default = "vc01.kmagroup.local/sdk"
}
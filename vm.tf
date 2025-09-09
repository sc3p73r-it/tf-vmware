resource "vsphere_virtual_machine" "vm" {
  name             = "tf-vm01"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus         = 2
  memory           = 4096
  guest_id         = "Ubuntu 64"
  network_interface {
    network_id = data.vsphere_network.network.id
  }
  disk {
    label = "Hard Disk 1"
    size  = 20
  }
}

// https://cloud-images.ubuntu.com/releases/noble/release-20250805/ubuntu-24.04-server-cloudimg-amd64.ova
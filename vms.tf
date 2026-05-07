resource "proxmox_vm_qemu" "Kube"{
    count = 2
    vmid = var.vmids[count.index]
    name = "plus-de-frites-a-la-cantine-${count.index + 1}"
    desc = "VM for MSPR project"

    target_node = var.hypervisor[count.index]
    pool = var.pool
    cores = 4
    memory = 4096
    os_type = "cloud-init"

    ciuser = var.ciuser
    sshkeys = var.sshkeys

    full_clone = true
    clone = var.clone

    serial {
      id = 0
    }

    scsihw = var.scsihw

    disks {
      ide {
        ide3 {
          cloudinit {
            storage = var.storage
          }
        }
      }

      scsi {
        scsi0 {
          disk {
            storage = var.storage
            size = 30
            format = var.format
          }
        }
      }
    }

    network {
        id = 0
        model = "virtio"
        bridge = "vmbr0"
    }

    ipconfig0 = "ip=${var.ips[count.index]},gw=${var.passerel}"
}
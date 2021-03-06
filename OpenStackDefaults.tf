#
# load up the OpenStack cloud with some default settings and images
#
resource "null_resource" "openstack-image-CentOS-8-ARM" {
  depends_on = [null_resource.controller-openstack]

  connection {
    host        = packet_device.controller.access_public_ipv4
    private_key = file(var.cloud_ssh_key_path)
  }

  provisioner "file" {
    source      = "CentOS-8-ARM-Image.sh"
    destination = "CentOS-8-ARM-Image.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash CentOS-8-ARM-Image.sh > CentOS-8-ARM-Image.out",
    ]
  }
}

resource "null_resource" "openstack-image-CentOS-8-x86" {
  depends_on = [null_resource.controller-openstack]

  connection {
    host        = packet_device.controller.access_public_ipv4
    private_key = file(var.cloud_ssh_key_path)
  }

  provisioner "file" {
    source      = "CentOS-8-x86-Image.sh"
    destination = "CentOS-8-x86-Image.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash CentOS-8-x86-Image.sh > CentOS-8-x86-Image.out",
    ]
  }
}

resource "null_resource" "openstack-image-Fedora-26-ARM" {
  depends_on = [null_resource.controller-openstack]

  connection {
    host        = packet_device.controller.access_public_ipv4
    private_key = file(var.cloud_ssh_key_path)
  }

  provisioner "file" {
    source      = "Fedora-26-ARM-Image.sh"
    destination = "Fedora-26-ARM-Image.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash Fedora-26-ARM-Image.sh > Fedora-26-ARM-Image.out",
    ]
  }
}

resource "null_resource" "openstack-image-Cirros-x86" {
  depends_on = [null_resource.controller-openstack]

  connection {
    host        = packet_device.controller.access_public_ipv4
    private_key = file(var.cloud_ssh_key_path)
  }

  provisioner "file" {
    source      = "Cirros-x86-Image.sh"
    destination = "Cirros-x86-Image.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash Cirros-x86-Image.sh > Cirros-x86-Image.out",
    ]
  }
}

resource "null_resource" "openstack-image-Bionic-18_04-ARM" {
  depends_on = [null_resource.controller-openstack]

  connection {
    host        = packet_device.controller.access_public_ipv4
    private_key = file(var.cloud_ssh_key_path)
  }

  provisioner "file" {
    source      = "Bionic-18_04-ARM-Image.sh"
    destination = "Bionic-18_04-ARM-Image.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash Bionic-18_04-ARM-Image.sh > Bionic-18_04-ARM-Image.out",
    ]
  }
}

resource "null_resource" "openstack-image-Bionic-18_04-AMD64" {
  depends_on = [null_resource.controller-openstack]

  connection {
    host        = packet_device.controller.access_public_ipv4
    private_key = file(var.cloud_ssh_key_path)
  }

  provisioner "file" {
    source      = "Bionic-18_04-AMD64-Image.sh"
    destination = "Bionic-18_04-AMD64-Image.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash Bionic-18_04-AMD64-Image.sh > Bionic-18_04-AMD64-Image.out",
    ]
  }
}

resource "null_resource" "openstack-image-Trusty-14_04-ARM" {
  depends_on = [null_resource.controller-openstack]

  connection {
    host        = packet_device.controller.access_public_ipv4
    private_key = file(var.cloud_ssh_key_path)
  }

  provisioner "file" {
    source      = "Trusty-14_04-ARM-Image.sh"
    destination = "Trusty-14_04-ARM-Image.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash Trusty-14_04-ARM-Image.sh > Trusty-14_04-ARM-Image.out",
    ]
  }
}

resource "null_resource" "openstack-image-Xenial-16_04-ARM" {
  depends_on = [null_resource.controller-openstack]

  connection {
    host        = packet_device.controller.access_public_ipv4
    private_key = file(var.cloud_ssh_key_path)
  }

  provisioner "file" {
    source      = "Xenial-16_04-ARM-Image.sh"
    destination = "Xenial-16_04-ARM-Image.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash Xenial-16_04-ARM-Image.sh > Xenial-16_04-ARM-Image.out",
    ]
  }
}

resource "null_resource" "openstack-image-Cirros-ARM" {
  depends_on = [null_resource.controller-openstack]

  connection {
    host        = packet_device.controller.access_public_ipv4
    private_key = file(var.cloud_ssh_key_path)
  }

  provisioner "file" {
    source      = "Cirros-ARM-Image.sh"
    destination = "Cirros-ARM-Image.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash Cirros-ARM-Image.sh > Cirros-ARM-Image.out",
    ]
  }
}

resource "null_resource" "openstack-flavors" {
  depends_on = [null_resource.controller-openstack]

  connection {
    host        = packet_device.controller.access_public_ipv4
    private_key = file(var.cloud_ssh_key_path)
  }

  provisioner "file" {
    source      = "DefaultOpenStackFlavors.sh"
    destination = "DefaultOpenStackFlavors.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "bash DefaultOpenStackFlavors.sh > DefaultOpenStackFlavors.out",
    ]
  }
}


#-------------------------------------------------------
# GCDS
#-------------------------------------------------------

# Spec VM Type
# See GCDS requirements:  https://support.google.com/a/answer/6123896

# This build uses LXDE
# https://techloverhd.com/2015/05/install-lxde-vnc-gui-on-ubuntu-debian-server/

# TAG server and add network ports 443 & 80

locals {
  gcds_var = <<EOF
sys.programGroup.linkDir=/usr/bin
sys.languageId=en
sys.installationDir=/gcds
sys.programGroup.enabled$Boolean=true
sys.programGroup.allUsers$Boolean=true
sys.programGroup.name=Google Cloud Directory Sync
  EOF

  xstartup = <<EOF
#!/bin/sh
xrdb $HOME/.Xresources
xsetroot -solid grey
#x-terminal-emulator -geometry 80x24+10+10 -ls -title "$VNCDESKTOP Desktop" &
#x-window-manager &
# Fix to make GNOME work
export XKL_XMODMAP_DISABLE=1
/etc/X11/Xsession
lxterminal &
/usr/bin/lxsession -s LXDE &
  EOF

  startup_script = <<EOF
#!/bin/bash
apt update
apt -yq upgrade
DEBIAN_FRONTEND=noninteractive apt -yq install vim openjdk-8-jdk xorg lxde-core lxterminal tightvncserver libxext6 libxi6 libxrender1 libxtst6 python3 python3-ldap wget
dpkg --force-all -P openjdk-17-jre:amd64 openjdk-17-jre-headless:amd64 openjdk-17-jre openjdk-17-jre-headless
[ ! -d "/gcds" ] && mkdir /gcds
cd /gcds
echo "${local.gcds_var}" > gcds.varfile
wget https://dl.google.com/dirsync/dirsync-linux64.sh
chmod +x dirsync-linux64.sh
./dirsync-linux64.sh -q
[ -f "dirsync-linux64.sh" ] && rm dirsync-linux64.sh
apt autoremove -y
apt -yq clean
[ ! -d "/root/.vnc" ] && mkdir /root/.vnc
echo "${local.xstartup}" > /root/.vnc/xstartup
chmod +x /root/.vnc/xstartup
[ -f "/root/.vnc/passwd" ] && su - -c "/usr/bin/vncserver"
  EOF
}

resource "google_service_account" "gcds_sa" {
  project      = var.project_id
  account_id   = "gcds-sa"
  display_name = "GCDS Service Account"
}

resource "google_compute_instance" "gcds" {
  project      = var.project_id
  name         = var.instance_name
  machine_type = "e2-medium"
  zone         = var.zone

  tags = ["vnc"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-minimal-2004-lts"
    }
  }

  metadata = {
    startup-script = local.startup_script
  }

  network_interface {
    network       = var.network
    #access_config = var.public ? var.access_config : []

    access_config {
      // Ephemeral public IP
    }
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.gcds_sa.email
    scopes = ["cloud-platform"]
  }
}
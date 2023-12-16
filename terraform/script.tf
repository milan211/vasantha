provider "google" {
  credentials = file("path/to/your/gcp/credentials.json")
  project     = "your-project-id"
  region      = "us-central1"
}

resource "google_compute_instance" "ansible_controller" {
  name         = "ansible-controller"
  machine_type = "e2.medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      size = 20
      image = "debian-cloud/debian-10"
    }
  }
}

resource "google_compute_instance" "ansible_node" {
  name         = "ansible-node"
  machine_type = "n1-standard-2"
  zone         = "us-central1-b"

  boot_disk {
    initialize_params {
      size = 30
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
}


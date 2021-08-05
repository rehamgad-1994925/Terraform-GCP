resource "google_service_account" "My-VM" {
  account_id   = "service_account_id"
  display_name = "Service Account"
}

resource "google_compute_instance" "My-VM01" {
  name         = "instance-1"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  subnetwork_range_name = "private-subnet"
  ip_cidr_range = "192.168.10.0/24"

  boot_disk {
    initialize_params {
      image = "RedHat Enterprise linux-cloud/Redhat Enterprise liunx -7"
    }
  }

  /* Local SSD disk
  scratch_disk {
    interface = "SCSI"  */
  }

resource "google_compute_instance" "My_VM02" {
  name         = "instance-2"
  machine_type = "e2-medium"
  zone         = "eu-west1-a"
  subnetwork_range_name = "public-subnet"
  ip_cidr_range = "10.2.0.0/16"

  boot_disk {
    initialize_params {
      image = "RedHat Enterprise linux-cloud/Redhat Enterprise liunx -7"
    }

  /*Local SSD disk
  scratch_disk {
    interface = "SCSI"  
  } */ 
}
  }
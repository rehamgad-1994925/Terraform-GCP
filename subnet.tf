resource "google_compute_subnetwork" "my-test-subnets" {
  name          = "public-subnet"
  ip_cidr_range = "10.2.0.0/16"
  region        = "eu-west1"
  network       = google_compute_network.my-vpc.id
  secondary_ip_range {
    range_name    = "private-subnet"
    ip_cidr_range = "192.168.10.0/24"
	region        = "us-central1"
  }
}
resource "google_compute_network" "my-vpc" {
  name = "my_vpc"
  auto_create_subnetworks = false
}
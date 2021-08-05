module "nat" {
  source     = "GoogleCloudPlatform/nat-gateway/google"
  region     = "us-central1"
  network    = "my-vpc"
  subnetwork = "test-subnets"
}
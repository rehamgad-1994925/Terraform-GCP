resource "google_project_services" "project" {
  project = "nti-test-project"
  services   = ["computeengine.googleapis.com"]
  }
  
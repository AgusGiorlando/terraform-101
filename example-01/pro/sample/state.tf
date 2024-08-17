terraform {
  backend "gcs" {
    bucket = "tf-state-udemy-001"
    prefix = "terraform/state/example-01/pro/sample/"
  }
}

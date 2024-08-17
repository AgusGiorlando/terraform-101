resource "google_storage_bucket" "tf-state" {
  name          = "tf-state-udemy-001"
  location      = "EU"
  force_destroy = false
  # Es recomendable activar el versioning para los state files para poder hacer roll-back a una versión anterior.
  uniform_bucket_level_access = true
  versioning {
    enabled = true
  }
}
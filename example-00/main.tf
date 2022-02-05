provider "google" {
    region = "europe-west1"
    zone = "europe-west1-c"
    #Sustituye por el project id por el que corresponda en tu caso.
    project = "thinking-pagoda-340412"
}


resource "google_storage_bucket" "tf-state" {
  name          = "terraform-101-state-${random_id.instance_id.hex}"
  location      = "EU"
  force_destroy = false
# Es recomendable activar el versioning para los state files para poder hacer roll-back a una versión anterior.
  versioning {
    enable = true
  }
  uniform_bucket_level_access = true
}
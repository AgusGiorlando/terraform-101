# Descomentar una vez el storage este creado para configurar el remote state.
terraform {
  backend "gcs" {
    #Sustituir el nombre del bucket
    bucket = "tf-state-udemy-001"
    prefix = "terraform/state/example-00/"
  }
}

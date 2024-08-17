module "sample" {
  #source = "../../../example-01/modules/sample"
  source = "github.com/AgusGiorlando/terraform-101.git//example-01/modules/sample"

  environtment                         = "pre"
  google_compute_instance_name         = "intance1"
  google_compute_instance_machine_type = "f1-micro"

}


#-------------------------------------------------------
# GCDS
#-------------------------------------------------------
module "gcds" {
  source     = "./modules/gcds"
  project_id = "banky-dc-test"
  region     = "us-central1"
  zone       = "us-central1-a"
  network    = "default"
  public     = false
}


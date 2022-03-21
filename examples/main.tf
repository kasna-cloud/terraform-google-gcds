#-------------------------------------------------------
# GCDS
#-------------------------------------------------------
module "gcds" {
  source     = "kasna-cloud/gcds/google"
  project_id = "banky-dc-test"
  region     = "us-central1"
  zone       = "us-central1-a"
}


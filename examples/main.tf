#-------------------------------------------------------
# GCDS
#-------------------------------------------------------
module "gcds" {
  source     = "kasna-cloud/gcds/google"
  version    = "0.0.3"
  project_id = "banky-dc-test"
  region     = "us-central1"
  zone       = "us-central1-a"
}


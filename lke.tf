resource "linode_lke_cluster" "test-cluster" {
  label       = "my-cluster"
  k8s_version = "1.27"
  region      = "jp-osa"
  tags        = ["test"]

  pool {
    type  = "g6-standard-1"
    count = 3
    autoscaler {
      min = 3
      max = 4
    }
  }
}

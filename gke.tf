resource "google_container_cluster" "lab" {
  name     = var.cluster_name
  location = var.zone

  network    = google_compute_network.lab_vpc.id
  subnetwork = google_compute_subnetwork.lab_subnet.id

  remove_default_node_pool = true
  initial_node_count       = 1

  deletion_protection = false
}

resource "google_container_node_pool" "lab_nodes" {
  name       = "lab-node-pool"
  location   = var.zone
  cluster    = google_container_cluster.lab.name
  node_count = 1

  node_config {
    machine_type = "e2-medium"

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
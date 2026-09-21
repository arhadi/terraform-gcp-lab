output "vpc_name" {
  value = google_compute_network.lab_vpc.name
}

output "subnet_name" {
  value = google_compute_subnetwork.lab_subnet.name
}

output "gke_cluster_name" {
  value = google_container_cluster.lab.name
}

output "gke_location" {
  value = google_container_cluster.lab.location
}
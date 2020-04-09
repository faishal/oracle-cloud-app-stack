output "app" {
  description = "App url pointing to instance"
  value       = "http://${data.oci_core_vnic.app_vnic.public_ip_address}"
}
output "lb_public_ip" {
  description = "Loadbalancer public IP"
  value       = ["${oci_load_balancer.free_load_balancer.ip_address_details}"]
}

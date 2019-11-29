output "ipv4_address" {
  value = digitalocean_droplet.test.ipv4_address
}

output "price_hourly" {
  value = digitalocean_droplet.test.price_hourly
}

output "price_monthly" {
  value = digitalocean_droplet.test.price_monthly
}

output "size" {
  value = digitalocean_droplet.test.size
}

output "status" {
  value = digitalocean_droplet.test.status
}

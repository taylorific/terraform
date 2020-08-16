data "digitalocean_ssh_key" "jain_yubikey" {
  name = "jain yubikey"
}

resource "digitalocean_droplet" "debian10" {
  image = "debian-10-x64"
  name = "debian10"
  region = "sfo2"
  size = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.jain_yubikey.id]
}

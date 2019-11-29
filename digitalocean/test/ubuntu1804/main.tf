data "digitalocean_ssh_key" "jain_yubikey" {
  name = "jain yubikey"
}

resource "digitalocean_droplet" "test" {
  image = "ubuntu-18-04-x64"
  name = "test"
  region = "sfo2"
  size = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.jain_yubikey.id]
}

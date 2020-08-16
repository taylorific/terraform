data "digitalocean_ssh_key" "jain_yubikey" {
  name = "jain yubikey"
}

resource "digitalocean_droplet" "bazel" {
  image = "ubuntu-18-04-x64"
  name = "bazel"
  region = "sfo2"
  size = "s-6vcpu-16gb"
  ssh_keys = [data.digitalocean_ssh_key.jain_yubikey.id]
}

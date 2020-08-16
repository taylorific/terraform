data "digitalocean_ssh_key" "winry_sshkey" {
  name = "winry-sshkey"
}

resource "digitalocean_droplet" "test" {
  image = "ubuntu-20-04-x64"
  name = "test"
  region = "sfo2"
  size = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.winry_sshkey.id]
}

# data "digitalocean_ssh_key" "jain_yubikey" {
#   name = "jain yubikey"
# }

data "digitalocean_ssh_key" "winry_sshkey" {
  name = "winry-sshkey"
}

resource "digitalocean_droplet" "test" {
  image = "centos-7-x64"
  name = "centos7"
  region = "sfo2"
  # size = "s-1vcpu-1gb" # 1GB RAM, 1 CPU, 25GB disk, 1TB transfer, $5/month
  size = "s-2vcpu-4gb" # 4GB RAM, 2 CPU, 80GB disk, 4TB transfer, $20/month
  ssh_keys = [data.digitalocean_ssh_key.winry_sshkey.id]
}

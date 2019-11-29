resource "packet_ssh_key" "jain_yubikey" {
  name = "jain-yubikey"
  public_key = "${file("/Users/sheska/.ssh/id_rsa_jain_yubikey.pub")}"
}

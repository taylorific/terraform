data "packet_project" "default_project" {
  name = "Default Project"
}

resource "packet_device" "esxi65" {
  hostname = "test"
  plan = "t1.small.x86"
  facilities = ["sjc1"] # "2b70eb8f-fa18-47c0-aba7-222a842362fd",
  operating_system = "vmware_esxi_6_5"
  billing_cycle = "hourly"
  project_id = data.packet_project.default_project.project_id
}

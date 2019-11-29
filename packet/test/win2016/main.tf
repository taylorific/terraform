data "packet_project" "default_project" {
  name = "Default Project"
}

resource "packet_device" "win2016" {
  hostname = "win2016"
  plan = "t1.small.x86"
  facilities = ["sjc1"] # "2b70eb8f-fa18-47c0-aba7-222a842362fd",
  operating_system = "windows_2016"
  billing_cycle = "hourly"
  project_id = data.packet_project.default_project.project_id
}

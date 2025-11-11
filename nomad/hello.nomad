job "hello" {
  datacenters = ["dc1"]
  type = "service"

  group "example" {
    task "hello-task" {
      driver = "docker"

      config {
        image = "devops-hello:latest"
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}

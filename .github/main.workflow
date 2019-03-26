workflow "Nexus Policy Evaluation" {
  on = "push"
  resolves = ["GitHub Action for Maven"]
}

action "GitHub Action for Maven" {
  uses = "/maurycupitt/GitHub-Actions-for-Sonatype-Nexus-Policy-Evaluations@master"
  secrets = ["authentication"]
  env = {
    sever_url = "http://iq.ngrok.io"
    application_id = "struts2-rce"
    stage = "build"
  }
}

workflow "Nexus Policy Evaluation" {
  on = "push"
  resolves = ["GitHub Action for Sonatype Nexus"]
}

action "GitHub Action for Sonatype Nexus" {
  uses = "maurycupitt/GitHub-Actions-for-Sonatype-Nexus-Policy-Evaluations@master"
  secrets = [
    "IQ_PASSWORD",
    "IQ_USER",
  ]
  env = {
    SERVER_URL = "http://iq.ngrok.io"
    STAGE = "build"
    APPLICATION_ID = "struts2-rce"
    USE_MAVEN_EVAL = "true"
    TARGET = "."
  }
}

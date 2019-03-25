workflow "Nexus Policy Evaluation" {
  on = "push"
  resolves = ["GitHub Action for Maven"]
}

action "GitHub Action for Maven" {
  uses = "LucaFeger/action-maven-cli@9d8f23af091bd6f5f0c05c942630939b6e53ce44"
  args = "com.sonatype.clm:clm-maven-plugin:evaluate -Dclm.serverUrl=http://iq.ngrok.io -Dclm.applicationId=struts2-rce -Dclm.stage=build -Dclm.username=admin -Dclm.password=Nexus!23"
}

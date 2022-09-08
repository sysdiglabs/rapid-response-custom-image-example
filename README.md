# rapid-response-tools
Sample customization of Sysdig Rapid Response

This is an example image just add kubectl binary to Rapid Response container as per Sysdig doc:
https://docs.sysdig.com/en/docs/installation/rapid-response-installation/#as-docker-container

On sysdig-deploy helm chart `values.yaml` override the default image with the custom one ex:
```
    rapidResponse:
      enabled: true
      rapidResponse:
        image:
          registry: ghcr.io
          repository: dark-vex/ra-custom
          tag: latest
        passphrase: "justarandomtestpassword"
        existingPassphraseSecret: ""
```

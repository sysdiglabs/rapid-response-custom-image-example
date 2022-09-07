# rapid-response-tools
Sample customization of Sysdig Rapid Response

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

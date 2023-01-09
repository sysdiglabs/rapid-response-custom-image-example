# A Rapid Response customized image example
This is an example of how you can customize Rapid Response image to install tools, scripts and whatever you might need to respond to incidents.

In this example, the `kubectl` binary is added to Rapid Response, so that whoever needs to respond to the incident can pull logs, drop a shell into a pod or running similar operations.

In order to use this image you need to customize the configuration parameters used in Helm specifying such. Here an example of `values.yaml` for the rapid-response chart to override the default image with a custom one:
```
rapidResponse:
  image:
    registry: ghcr.io
    repository: <repo-name/<image-name>
    tag: latest
  imagePullSecrets:
  - name: dockerconfigjson-github-com
  existingServiceAccount: sysdig-rr-sa
  passphrase: "justarandomtestpassword"
```

In this example you can also find that `imagePullSecret` is configured in order to pull the image from a private repository, using those credentials. See more [here](https://charts.sysdig.com/charts/rapid-response/#customize-rapid-response-image)

The configuration also specifies a service account to use, through `existingServiceAccount` value, in order to give specific permissions to Rapid Response pods. See more [here](https://charts.sysdig.com/charts/rapid-response/#use-a-custom-serviceaccount)

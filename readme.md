# Lab AKS Retina

This repo contains samples IaC configurations to test Retina on AKS.
It's organized in 3 layers in the `terraformconfig` folder

- Network layer, containing the vnet configuration
- AKS layer, containing... the AKS cluster and its related resources
- Helm layer, because I'm lazy and keep teraform also to deploy helm chart, most of the time

There is additionaly a `yamlconfig` folder that contains yaml manifest, or helm chart deployment code, for those which are not done through terraform (I Said I was lazy right)
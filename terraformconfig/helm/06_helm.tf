

resource "helm_release" "prom" {
  name             = "prometheus-stack"
  repository       = "https://prometheus-community.github.io/helm-charts"
  chart            = "kube-prometheus-stack"
  namespace        = "kube-system"
  create_namespace = false

  values = [
    "${file("./retinareq.yaml")}"
  ]

  depends_on = [

  ]
}
/*
resource "helm_release" "retina" {
  name             = "retina"
  repository       = "https://ghcr.io/microsoft/retina/charts/retina"
  chart            = "retina"
  version          = "v0.0.12"
  namespace        = "kube-system"
  create_namespace = false

  set {
    name = "image.tag"
    value = "0.0.12"
  }

  set {
    name = "operator.tag"
    value = "0.0.12"
  }

  set {
    name = "loglevel"
    value = "info"
  }

  set {
    name = "os.windows"
    value = "true"
  }

  set {
    name = "operator.enabled"
    value = "true"
  }

  set {
    name = "operator.enabledRetinaEndpoint"
    value = "true"
  }

  set {
    name = "enablePodLevel"
    value = "true"
  }

  set {
    name = "enabledPlugin_linux"
    value = "[dropreason,packetforward,linuxutil,dns,packetparser]"
  }

  set {
    name = "enableAnnotations"
    value = "true"
  }

  depends_on = [

  ]
}
*/
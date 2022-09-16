apiVersion: build.openshift.io/v1
kind: BuildConfig
metadata:
  annotations:
    openshift.io/generated-by: OpenShiftWebConsole
  creationTimestamp: '2022-09-13T23:06:11Z'
  labels:
    app: bytteyamlfilen
  name: hejhej
  namespace: hejhej
  resourceVersion: '134627'
  selfLink: /apis/build.openshift.io/v1/namespaces/hejhej/buildconfigs/hejhej
  uid: a87f051b-33b8-11ed-a080-080027329fce
spec:
  nodeSelector: null
  output:
    to:
      kind: ImageStreamTag
      name: 'hejhej:latest'
  postCommit: {}
  resources: {}
  runPolicy: Serial
  source:
    git:
      ref: master
      uri: 'https://github.com/datawire/hello-world-python.git'
    type: Git
  strategy:
    sourceStrategy:
      from:
        kind: ImageStreamTag
        name: 'python:3.6'
        namespace: openshift
    type: Source
  triggers:
    - imageChange:
        lastTriggeredImageID: >-
          172.30.1.1:5000/openshift/python@sha256:ac50754646f0d37616515fb30467d8743fb12954260ec36c9ecb5a94499447e0
      type: ImageChange
    - type: ConfigChange
    - generic:
        secret: 1056b2d1d5404d22
      type: Generic
    - github:
        secret: 5af000ec22e86df2
      type: GitHub
status:
  lastVersion: 1

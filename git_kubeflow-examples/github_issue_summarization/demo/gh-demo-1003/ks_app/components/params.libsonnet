{
  global: {},
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    "pytorch-operator": {
      cloud: 'null',
      deploymentNamespace: 'null',
      deploymentScope: 'cluster',
      disks: 'null',
      name: 'pytorch-operator',
      namespace: 'null',
      pytorchDefaultImage: 'null',
      pytorchJobImage: 'gcr.io/kubeflow-images-public/pytorch-operator:v0.3.0',
      pytorchJobVersion: 'v1alpha2',
    },
    ambassador: {
      ambassadorImage: 'quay.io/datawire/ambassador:0.37.0',
      ambassadorServiceType: 'ClusterIP',
      cloud: 'gke',
      name: 'ambassador',
      statsdImage: 'quay.io/datawire/statsd:0.37.0',
      statsdSinkImage: 'prom/statsd-exporter:v0.6.0',
    },
    jupyterhub: {
      accessLocalFs: 'false',
      cloud: 'gke',
      disks: 'kubeflow-gcfs',
      gcpSecretName: 'user-gcp-sa',
      image: 'gcr.io/kubeflow/jupyterhub-k8s:v20180531-3bb991b1',
      jupyterHubAuthenticator: 'iap',
      name: 'jupyterhub',
      namespace: 'null',
      notebookGid: '-1',
      notebookPVCMount: '/home/jovyan',
      notebookUid: '-1',
      registry: 'gcr.io',
      repoName: 'kubeflow-images-public',
      serviceType: 'ClusterIP',
      useJupyterLabAsDefault: 'false',
    },
    centraldashboard: {
      image: 'gcr.io/kubeflow-images-public/centraldashboard:v0.3.0',
      name: 'centraldashboard',
    },
    "tf-job-operator": {
      cloud: 'null',
      deploymentNamespace: 'null',
      deploymentScope: 'cluster',
      name: 'tf-job-operator',
      namespace: 'null',
      tfDefaultImage: 'null',
      tfJobImage: 'gcr.io/kubeflow-images-public/tf_operator:v0.3.0',
      tfJobUiServiceType: 'ClusterIP',
      tfJobVersion: 'v1alpha2',
    },
    argo: {
      executorImage: 'argoproj/argoexec:v2.2.0',
      name: 'argo',
      namespace: 'null',
      uiImage: 'argoproj/argoui:v2.2.0',
      workflowControllerImage: 'argoproj/workflow-controller:v2.2.0',
    },
    katib: {
      modeldbDatabaseImage: 'mongo:3.4',
      modeldbFrontendImage: 'gcr.io/kubeflow-images-public/katib/katib-frontend:v0.1.2-alpha-34-gb46378c',
      modeldbImage: 'gcr.io/kubeflow-images-public/modeldb-backend:v0.2.0',
      name: 'katib',
      studyJobControllerImage: 'katib/studyjob-controller',
      suggestionGridImage: 'gcr.io/kubeflow-images-public/katib/suggestion-grid:v0.1.2-alpha-34-gb46378c',
      suggestionRandomImage: 'gcr.io/kubeflow-images-public/katib/suggestion-random:v0.1.2-alpha-34-gb46378c',
      vizierCoreImage: 'gcr.io/kubeflow-images-public/katib/vizier-core:v0.1.2-alpha-34-gb46378c',
      vizierDbImage: 'mysql:8.0.3',
    },
    spartakus: {
      name: 'spartakus',
      reportUsage: 'true',
      usageId: '253276083',
    },
    "cloud-endpoints": {
      name: 'cloud-endpoints',
      namespace: 'null',
      secretKey: 'admin-gcp-sa.json',
      secretName: 'admin-gcp-sa',
    },
    "cert-manager": {
      acmeEmail: 'jlewi@google.com',
      acmeUrl: 'https://acme-v02.api.letsencrypt.org/directory',
      certManagerImage: 'quay.io/jetstack/cert-manager-controller:v0.4.0',
      name: 'cert-manager',
      namespace: 'null',
    },
    "iap-ingress": {
      disableJwtChecking: 'false',
      envoyImage: 'gcr.io/kubeflow-images-public/envoy:v20180309-0fb4886b463698702b6a08955045731903a18738',
      hostname: 'gh-demo-1003.endpoints.kubecon-gh-demo-1.cloud.goog',
      ingressSetupImage: 'gcr.io/kubeflow-images-public/ingress-setup:latest',
      ipName: 'gh-demo-1003-ip',
      issuer: 'letsencrypt-prod',
      name: 'iap-ingress',
      namespace: 'null',
      oauthSecretName: 'kubeflow-oauth',
      privateGKECluster: 'false',
      secretName: 'envoy-ingress-tls',
    },
    seldon: {
      apifeServiceType: 'NodePort',
      name: 'seldon',
      namespace: 'null',
      operatorJavaOpts: 'null',
      operatorSpringOpts: 'null',
      seldonVersion: '0.2.3',
      withApife: 'false',
      withRbac: 'true',
    },
    "google-cloud-filestore-pv": {
      image: 'gcr.io/kubeflow-images-public/ubuntu:18.04',
      name: 'kubeflow-gcfs',
      path: '/kubeflow',
      serverIP: '10.33.75.194',
      storageCapacity: '20',
    },
  },
}
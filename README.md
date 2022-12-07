## Scripts to run MicroShift and install some components on it

The cluster is being created using [kcli](https://kcli.readthedocs.io/en/latest/#deploying-kubernetes-openshift-clusters-and-applications-on-top)

The file *microshift-params.yaml* has some configurations for the cluster

After the cluster has been created usign kcli, export the KUBE_CONFIG variable, it should exist in $HOME/.kcli/cluster/<NAME_OF_YOUR_CLUSTER>/auth/kubeconfig

 - To install the OKD console : install_okd_console.sh
 - To install Tekton : install_tekton.sh
 - To install the cloud-native toolkit : install_cntk.sh

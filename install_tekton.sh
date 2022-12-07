oc new-project tekton-pipelines
oc adm policy add-scc-to-user anyuid -z tekton-pipelines-controller
oc adm policy add-scc-to-user anyuid -z tekton-pipelines-webhook
oc apply -f yamls_to_apply/consolelink.crd.yaml
oc apply -f yamls_to_apply/tekton_pipelines.yaml

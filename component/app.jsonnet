local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.grafana_oncall;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('grafana-oncall', params.namespace);

{
  'grafana-oncall': app,
}

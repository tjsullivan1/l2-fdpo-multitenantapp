targetScope = 'subscription'
param location string
/*module aca2 'br:tjsfdpo01.azurecr.io/bicep/modules/containerapp:0.0.1' = {
	name: 'aca2'
	scope: mtWFunctionRG
	params: {
		 containerAppEnvName: 'came-fdpo-02'
		 containerAppName: 'ca-fdpo-02'
	}
}
*/

resource mtAcaRg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: 'rg-multitenant-aca-sample'
  location: location
}

module aca_uai 'br:tjsfdpo01.azurecr.io/bicep/modules/containerapp-uai:0.0.1' = {
  name: 'uai'
  scope: mtAcaRg
  params: {
    aca_uai_name: 'ca-fdpo'
  }
}

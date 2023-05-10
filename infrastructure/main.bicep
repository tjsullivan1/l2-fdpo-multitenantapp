/*module aca2 'br:tjsfdpo01.azurecr.io/bicep/modules/containerapp:0.0.1' = {
	name: 'aca2'
	scope: mtWFunctionRG
	params: {
		 containerAppEnvName: 'came-fdpo-02'
		 containerAppName: 'ca-fdpo-02'
	}
}
*/

module aca_uai 'br:tjsfdpo01.azurecr.io/bicep/modules/containerapp-uai:0.0.1' = {
  name: 'uai'
  params: {
    aca_uai_name: 'ca-fdpo'
  }
}

$resouregroupname = "BDF_CustomScriptionExtension1"
Connect-AzAccount 
New-AzResourceGroup -Name $resouregroupname -Location "westeurope"
New-AzResourceGroupDeployment -ResourceGroupName $resouregroupname -TemplateParameterFile "azuredeploy.parameter.json" -TemplateFile "azuredeploy.json"

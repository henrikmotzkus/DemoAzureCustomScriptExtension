###################################################################################################
#
# Powershell to deploy the ARM
#


$resouregroupname = "BDF_CustomScriptionExtension1"


# Connect to your Azure subscription make sure you're dpeloying to the right subscription!
Connect-AzAccount 

# Create a resource group 
New-AzResourceGroup -Name $resouregroupname -Location "westeurope"


# Create the deployment
New-AzResourceGroupDeployment -ResourceGroupName $resouregroupname -TemplateParameterFile "azuredeploy.parameter.json" -TemplateFile "azuredeploy.json"

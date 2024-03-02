#! /bin/bash

# Antes de rodar o script, adicione as informacoes para cada variavel abaixo
subscriptionId=
resourceGroupName=
automationAccountName=
apiversion="2020-01-13-preview"

az rest --method patch --body '{"identity":{"type":"SystemAssigned"}}' --uri "https://management.azure.com/subscriptions/$subscriptionId/resourceGroups/$resourceGroupName/providers/Microsoft.Automation/automationAccounts/$automationAccountName?api-version=$apiversion"

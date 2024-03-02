# Before run the script add values to the varibles below
$subscriptionId = ""
$resourceGroupName = ""
$automationAccountName = ""
$apiversion = "2020-01-13-preview"

az rest --method patch --body '{"identity":{"type":"SystemAssigned"}}' --uri "https://management.azure.com/subscriptions/$subscriptionId/resourceGroups/$resourceGroupName/providers/Microsoft.Automation/automationAccounts/$automationAccountName`?api-version=$apiversion"

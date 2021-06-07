param storagePrefix string = resourceGroup().name
param location string = resourceGroup().location
var uniqueStorageName = '${storagePrefix}${uniqueString(resourceGroup().id)}'

resource myStorage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: uniqueStorageName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

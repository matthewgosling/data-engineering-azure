resource storageAccount 'Microsoft.Storage/storageAccounts@2021-05-19' = {
  name: 'demo-storage-account'
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'hot'
    supportsHttpsTrafficOnly: true
  }
}

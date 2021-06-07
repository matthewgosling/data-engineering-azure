resource pocStorage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: pocStorageName
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

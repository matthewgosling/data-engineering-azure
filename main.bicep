// deploy a resource group
resource pocRg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'ProofOfConcept'
  location: 'West Europe'
}

// deploy storage to the newly-created resource group
module myStorage './storage.bicep' = {
  name: 'myStorage'
}

module appService 'modules/sql-database.bicep' = {
  name: 'sql-database'
  params: {
    location: location
    appServiceAppName: appServiceAppName
    environmentType: environmentType
  }
}

module appService 'modules/cosmosdb.bicep' = {
  name: 'cosmosdb'
  params: {
    location: location
    appServiceAppName: appServiceAppName
    environmentType: environmentType
  }
}

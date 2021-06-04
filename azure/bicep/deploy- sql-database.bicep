param serverName string = uniqueString('sql', resourceGroup().id)
param sqlDBName string = 'pocDB'
param location string = resourceGroup().location
param administratorLogin string = '${{ secrets.SQL_USERID }}'
param administratorLoginPassword string = '${{ secrets.SQL_PASSWORD }}'

resource server 'Microsoft.Sql/servers@2021-02-01-preview' = {
  name: serverName
  location: location
  properties: {
    administratorLogin: administratorLogin
    administratorLoginPassword: administratorLoginPassword
  }
}

resource sqlDB 'Microsoft.Sql/servers/databases@2021-02-01-preview' = {
  name: '${server.name}/${sqlDBName}'
  location: location
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
}

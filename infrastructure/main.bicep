@description('The environment prefix to append to resource names.')
param applicationName string = ''

@description('The environment suffix to append to resource names.')
param environmentSuffix string = 'ci'

@description('The environment prefix to append to resource names.')
param functionAppStorageBaseName string = ''

// Resource names
var functionAppName = '${applicationName}-${environmentSuffix}'
var functionStorageAccountName = '${functionStorageAccountName}${environmentSuffix}'
// Function
module function 'function.bicep' = {
  name: 'functionDeploy'
  params: {
    function_app_name: functionAppName
    storage_account_name: functionStorageAccountName
  }
}




#Create RG for storing State Files
az group create --location westus2 --name rg-terraformstate

#Create Storage Account
az storage account create --name salmonpalace17042021 --resource-group rg-terraformstate --location westus2 --sku Standard_LRS

#Create Storage Container
az storage container create --name terraformdemo1704 --account-name salmonpalace17042021

#Enable versioning on Storage Account1
az storage account blob-service-properties update --account-name salmonpalace17042021 --enable-change-feed --enable-versioning true

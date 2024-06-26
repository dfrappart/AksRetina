######################################################
# Variables
######################################################

##############################################################
#Variable declaration for provider

variable "AzureSubscriptionID" {
  type        = string
  description = "The subscription id for the authentication in the provider"
}

variable "AzureClientID" {
  type        = string
  description = "The application Id, taken from Azure AD app registration"
}


variable "AzureClientSecret" {
  type        = string
  description = "The Application secret"

}

variable "AzureTenantID" {
  type        = string
  description = "The Azure AD tenant ID"
}




######################################################
# Data sources variables

variable "AksClusterId" {
  type        = string
  description = "The Id of the cluster"

}


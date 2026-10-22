variable "rg_name" {
  description = "Navnet på resource group-en"
  type        = string
}

variable "location" {
  description = "Azure-regionen ressursene opprettes i"
  type        = string
  default     = "westeurope"
}

variable "app_name" {
  description = "Navnet på web app-en. Må være globalt unikt (blir <app_name>.azurewebsites.net)"
  type        = string
}

variable "sku" {
  description = "SKU for App Service Plan, f.eks. B1 eller P1v3"
  type        = string
  default     = "B1"
}

variable "node_version" {
  description = "Node-versjon for web app-en"
  type        = string
  default     = "22-lts"
}

variable "app_settings" {
  description = "App settings for web app-en"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Felles tags"
  type        = map(string)
  default     = {}
}
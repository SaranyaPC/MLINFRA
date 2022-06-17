# Copyright (c) 2021 Microsoft
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

variable "resource_group" {
  default = "aml-infra-terraform-poc"
}

variable "workspace_display_name" {
  default = "aml-infra-terraform-poc"
}

variable "location" {
  default = "East US"
}


variable "jumphost_username" {
  default = "azureuser"
}

variable "jumphost_password" {
  default = "ThisIsNotVerySecure!"
}

variable "prefix" {
  type = string
  default = "amlinfrapoc"
}

resource "random_string" "postfix" {
  length = 6
  special = false
  upper = false
}

variable "subscription_id" {
    description = "The subscription ID to be used to connect to Azure"
    type = string
}
variable "client_id" {
    description = "The client ID to be used to connect to Azure"
    type = string
}
variable "client_secret" {
    description = "The client secret to be used to connect to Azure"
    type = string
}
variable "tenant_id" {
    description = "The tenant ID to be used to connect to Azure"
    type = string
}
variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default     = "Azuredevops"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default     = "Germany West Central"
}

variable "packer_resource_group_name" {
   description = "Name of the resource group in which the Packer image will be created"
   default     = "Azuredevops"
}

variable "packer_image_name" {
   description = "Name of the Packer image"
   default     = "myPackerImage"
}


variable "username" {
  description = "User name to use as the admin account on the VMs that will be part of the VM scale set"
  default     = "Username"
}

variable "password" {
  description = "Default password for admin account"
  default     = "Password"
}

variable "tags" {
   description = "Map of the tags to use for the resources that are deployed"
   type        = map(string)
   default = {
   environment = "dev"
   }
}

variable "application_port" {
   description = "Port that you want to expose to the external load balancer"
   default     = 80
}

variable "vm_count" {
  description = "the number of virtual machines for the deployment"
  default     = 2   
  //for cost reasons, no more than 5.
}
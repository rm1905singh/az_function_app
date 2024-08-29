# variable "subscription_id" {

# }
variable "rgs" {
  description = "dev"
  type        = map(any)
  # default = {
  #   my_project = "uK_PROJCETS"
  # }
}

variable "storage_account" {
  description = "dev"
  type        = map(any)
  # default = {
  #   my_project = "uK_PROJCETS"
  # }
}

variable "service_app" {
  description = "dev"
  type        = map(any)
  # default = {
  #   my_project = "uK_PROJCETS"
  # }
}

variable "function_app" {
  description = "dev"
  type        = map(any)
  # default = {
  #   my_project = "uK_PROJCETS"
  # }
}

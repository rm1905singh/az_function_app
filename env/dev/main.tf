module "mrg1" {
  source = "../../Module/1rgs"
  rgs    = var.rgs

}
module "msa" {
  depends_on      = [module.mrg1]
  source          = "../../Module/2storage"
  storage_account = var.storage_account

}
# module "mservice" {
#   depends_on  = [module.mrg1]
#   source      = "../../Module/3servive_plan"
#   service_app = var.service_app

# }
module "mazfunction" {
  depends_on = [ module.mrg1 ]
  source       = "../../Module/4az_function_app"
  function_app = var.function_app

}

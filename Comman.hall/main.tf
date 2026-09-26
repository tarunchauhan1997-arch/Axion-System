module "rgs" {
  source = "../RESOURCE_GROUP"
  resource_groups  = var.rgs
}

module "storage_account" {
  source = "../STORAGE_ACCOUNT"
  storage_accounts = var.st_accounts

  depends_on = [module.rgs]
}
resource "azurerm_storage_account" "saname" {
    for_each = var.storage_accounts
    name                     = each.value.sa_name
    resource_group_name      = each.value.rg_name
    location                 = each.value.sa_location
    account_tier             = each.value.sa_tier
    account_replication_type = each.value.sa_replication_type
}
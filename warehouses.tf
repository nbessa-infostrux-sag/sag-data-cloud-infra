resource "snowflake_warehouse" "warehouses" {
  provider       = snowflake.sysadmin
  for_each       = local.warehouses
  name           = each.key
  comment        = each.value.comment
  warehouse_size = each.value.size
  auto_suspend   = each.value.auto_suspend
  auto_resume    = each.value.auto_resume
}

resource "snowflake_database" "databases" {
  provider = snowflake.sysadmin
  for_each = local.databases
  name     = each.key
  comment  = each.value.comment
}

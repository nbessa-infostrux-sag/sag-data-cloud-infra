resource "snowflake_role" "roles" {
  provider = snowflake.useradmin
  for_each = local.roles
  name     = each.key
  comment  = each.value.comment
}

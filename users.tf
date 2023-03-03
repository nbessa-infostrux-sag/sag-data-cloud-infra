resource "random_password" "password" {
  length  = 16
  special = true
}

resource "snowflake_user" "users" {
  provider             = snowflake.useradmin
  for_each             = local.users
  name                 = each.key
  comment              = each.value.comment
  default_role         = each.value.default_role
  default_warehouse    = each.value.default_warehouse
  disabled             = each.value.disabled
  display_name         = each.value.display_name
  login_name           = each.value.login_name
  must_change_password = true
  password             = random_password.password.result
}

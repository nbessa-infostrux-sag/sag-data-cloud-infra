module "rbac" {
  source  = "Infostrux-Solutions/rbac/snowflake"
  version = "1.0.3"

  providers = {
    snowflake = snowflake.securityadmin
  }

  depends_on = [
    snowflake_database.databases,
    snowflake_role.roles,
    snowflake_user.users,
    snowflake_warehouse.warehouses,
  ]

  spec_file_path = var.spec_file_path
}

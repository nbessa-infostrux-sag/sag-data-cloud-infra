locals {
  spec = yamldecode(file(var.spec_file_path))

  databases = {
    for database, spec in local.spec["databases"] : upper(database) => spec
  }

  roles = {
    for role, spec in local.spec["roles"] : upper(role) => spec
  }

  users = {
    for user, spec in local.spec["users"] : upper(user) => spec
  }

  warehouses = {
    for warehouse, spec in local.spec["warehouses"] : upper(warehouse) => spec
  }
}

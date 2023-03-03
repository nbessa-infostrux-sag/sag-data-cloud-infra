output "users_password" {
  description = "The randomly generated password for each Snowflake user."
  value       = random_password.password.result
  sensitive   = true
}

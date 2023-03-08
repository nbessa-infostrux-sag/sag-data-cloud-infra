terraform {
  required_version = ">= 1.0.0"

  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.47.0"
    }
  }

  backend "s3" {
    bucket         = "238568438533-ca-central-1-snowflake-terraform-state"
    dynamodb_table = "238568438533-ca-central-1-snowflake-terraform-state-locks"
    encrypt        = "true"
    key            = "data/snowflake/terraform.tfstate"
    kms_key_id     = "alias/data/s3/238568438533-ca-central-1-snowflake-terraform-state"
    region         = "ca-central-1"
  }
}

provider "snowflake" {
  alias = "useradmin"
  role  = "USERADMIN"
}

provider "snowflake" {
  alias = "securityadmin"
  role  = "SECURITYADMIN"
}

provider "snowflake" {
  alias = "sysadmin"
  role  = "SYSADMIN"
}

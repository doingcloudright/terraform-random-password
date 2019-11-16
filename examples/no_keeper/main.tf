## Without Keeper
module "random_password_no_keeper" {
  source = "../../"
}

output "random_password_no_keeper" {
  value = module.random_password_no_keeper.this_password
}

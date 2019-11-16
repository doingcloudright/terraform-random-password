## Without Keeper
module "random_password_with_keeper" {
  source = "../../"
  keepers = {
    # Generate a new id each time we have a new timestamp
    time = timestamp()
  }
}

output "random_password_with_keeper" {
  value = module.random_password_with_keeper.this_password
}

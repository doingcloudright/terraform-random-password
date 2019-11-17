# WAF ACL Rules

[![Build Status](https://travis-ci.com/doingcloudright/terraform-random-password.svg?branch=master)](https://travis-ci.com/doingcloudright/terraform-random-password)
[![Tag](https://img.shields.io/github/tag/doingcloudright/terraform-random-password.svg)](https://github.com/doingcloudright/terraform-random-password/releases)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Using Terragrunt Dependencies, this module is simple to use as input for the password of an RDS Database

This Terraform module creates random_passwords with predifined minimal strength of" 
 * 16 chars length
 * Minimum 2 upper
 * Minimum 2 lower
 * Minimum 2 numbers
 * Minimum 2 special chars
 * Special chars defined are "!@#$%&*()-_=+[]{}<>:?"


## Usage

### Not using Keeper

```hcl
module "random_password_no_keeper" {
  source = "../../"
}

output "random_password_no_keeper" {
  value = module.random_password_no_keeper.this_password
}
```

### Using Keeper

```hcl
## Without Keeper
module "random_password_with_keeper" {
  source = "../../"
  keepers = {
    # Generate a new password each time we have a new timestamp
    time = timestamp()
  }
}

output "random_password_with_keeper" {
  value = module.random_password_with_keeper.this_password
}
```


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| keepers |  | map | `{}` | no |
| length |  | number | `"16"` | no |
| lower |  | bool | `"true"` | no |
| min\_lower |  | number | `"2"` | no |
| min\_numeric |  | number | `"2"` | no |
| min\_special |  | number | `"2"` | no |
| min\_upper |  | number | `"2"` | no |
| number |  | bool | `"true"` | no |
| override\_special |  | string | `"!@#$%\u0026*()-_=+[]{}\u003c\u003e:?"` | no |
| special |  | bool | `"true"` | no |
| upper |  | bool | `"true"` | no |

## Outputs

| Name | Description |
|------|-------------|
| this\_password |  |
| this\_password\_as\_json |  |
| this\_password\_as\_list |  |
| this\_password\_as\_yaml |  |
| this\_password\_b64 |  |
| this\_password\_md5 |  |
| this\_password\_sha1 |  |
| this\_password\_sha256 |  |
| this\_password\_sha512 |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## License

[MIT](LICENSE)

Copyright (c) 2019 [Doingcloudright](https://github.com/doingcloudright)

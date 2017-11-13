# AWS API service module for Terraform

A lightweight API service module for The Terraform Book.

## Usage

```hcl
variable "api_instance_count" {
  default = 5
}

module "api" {
  source             = "github.com/turnbullpublishing/tf_api"
  environment        = "${var.environment}"
  vpc_id             = "${module.vpc.vpc_id}"
  public_subnet_ids  = "${module.vpc.public_subnet_ids}"
  private_subnet_ids = "${module.vpc.private_subnet_ids}"
  region             = "${var.region}"
  key_name           = "${var.key_name}"
  api_instance_count = "${var.api_instance_count}"
}

output "api_elb_address" {
  value = "${module.api.api_elb_address}"
}

output "api_host_addresses" {
  value = ["${module.api.api_host_addresses}"]
}
```

Assumes you're building your API service inside a VPC created from [this
module](https://github.com/turnbullpublishing/tf_vpc).

See `interface.tf` for additional configurable variables.

## License

MIT


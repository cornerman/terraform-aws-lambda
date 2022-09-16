# terraform-aws-lambda

Simply create a lambda function.

## Requirements

- terraform (>= 1.0.0)

## How to use?

Use it in your terraform deployment as a module.

```tf
module "my_lambda" {
  source = "cornerman/lambda/aws"
  version = "0.1.0"

  prefix      = "my-prefix"
  source_dir  = "./src"
  timeout     = 60
  memory_size = 256
  handler     = "index.handler"
  runtime     = "nodejs14.x"

  # more options in ./variables.tf
}
```

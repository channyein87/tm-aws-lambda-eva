# AWS Lambda Function

Simple lambda function with API gateway.

## Build

1. Create a new `terraform.tfvars` file and provide variable values according to `variables.tf` file.
1. Run terraform cmd to build the lambda function aand api gateway.

    ```shell
    terraform init
    terraform plan
    terraform apply
    ```

1. Example curl cmd.

    ```shell
    curl -v -X GET https://<api-gateway-url>/prod/hello`
    ```

## Destroy

```shell
terraform destroy
```

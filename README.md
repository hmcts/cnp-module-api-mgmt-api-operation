# cnp-module-api-mgmt-api-operation

A terraform module for creating a product in API mgmt

## Inputs

| Name | Description | Type | Default |
|------|-------------|:----:|:-----:|
| api\_mgmt\_name | Name of the api management, e.g. core-infra-demo | string | n/a |
| api\_mgmt\_rg | Resource group that api management is in, e.g. core-infra-demo | string | n/a |
| api\_mgmt\_api\_name | API Name to assign operation | string |  n/a | 
| operation\_id | Operation ID. Must be unquie. empty will be auto generated | string | `""` | 
| display\_name | Display Name of the Operation | string |  n/a | 
| description | Description of the Operation | string | `""` | 
| method | RESTful method | string |  n/a | 
| url\_template | Template for the request URL | string |  n/a | 
| xml\_content | XML Content of the Operation Policy | string | n/a |

## Outputs

| Name | Description |
|------|-------------|
| operation\_id | Requested or Generated Operation ID |
| id | ID of the operation from Azure |

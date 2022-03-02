### File with actions regarding TerraForm

#1 - Initialize terraform
Write-Host "## Terraform - Initialize"
terraform init

#2 - Format documents
Write-Host "## Terraform - Format documents"
terraform fmt

#3 - Validate documents
Write-Host "## Terraform - validate documents"
terraform validate

#4 - Plan changes and see what wil happen
Write-Host "## Terraform - plan configuration"
terraform plan

#4 - Apply configurations and choose to apply
Write-Host "## Terraform - apply configuration"
terraform apply

#5 - Show the state within the state file (may contain secret values)
Write-Host "## Terraform - Show state"
terraform show

#6 - Import State when state is lossed
terraform import [reference in file example(azurerm_resource_group.rg)] [resource id]
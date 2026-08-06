package main

# Ye rule check karta hai ki kya kisi Resource Group par 'CostCenter' tag miss ho raha hai
deny[msg] {
  # Har ek azurerm_resource_group ko check karo
  rg := input.resource.azurerm_resource_group[name]
  
  # Check karo ki 'CostCenter' tag mojood nahi hai
  not rg.tags["CostCenter"]
  
  # Agar nahi hai, toh ye error message throw karo
  msg = sprintf("DevSecOps Policy Violation: Resource Group '%v' ke paas 'CostCenter' tag hona zaroori hai!", [name])
}

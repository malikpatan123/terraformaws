# scripts/plan.sh
#!/bin/bash
cd environments/$1
terraform init
terraform plan

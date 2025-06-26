# scripts/apply.sh
#!/bin/bash
cd environments/$1
terraform init
terraform apply -auto-approve

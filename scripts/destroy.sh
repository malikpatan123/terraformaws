# scripts/destroy.sh
#!/bin/bash
cd environments/$1
terraform init
terraform destroy -auto-approve

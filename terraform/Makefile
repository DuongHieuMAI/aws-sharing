.DEFAULT_GOAL := plan
.PHONY: show init plan apply

show:
	terraform workspace show

init:
	terraform init

plan:
	terraform plan --var-file="input.tfvars"

apply:
	terraform apply -auto-approve --var-file="input.tfvars"

backup-dev:
	cp -r .terraform .terraform-dev

destroy:
	terraform destroy --var-file="input.tfvars"

reset:
	rm -rf .terraform
# Terraform + EMR Bootstrap PySpark with Anaconda

This code should help to jump start PySpark with Anaconda on AWS using Terraform.

## Getting Started
1. Install Terraform on Linux Ubuntu/Debian : 

Ensure that your system is up to date, and you have the gnupg, software-properties-common, and curl packages installed. You will use these packages to verify HashiCorp's GPG signature, and install HashiCorp's Debian package repository.

a. `sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl`

Add the HashiCorp GPG key.

b. `curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -`

Add the official HashiCorp Linux repository.

c. `sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"`

Update to add the repository, and install the Terraform CLI.

d.`sudo apt-get update && sudo apt-get install terraform` 

2. Adjust the scripts (`bootstrap_actions.sh` and `pyspark_quick_setup.sh`) in `scripts` if necessary

3. Set parameters in `terraform.tfvars`

4. Start cluster:
```
terraform init
terraform apply
```
5. Destroy cluster:
```
terraform destroy
```

### Notes
* Configure AWS on your local machine: `aws configure`
* [AWS instance cost](https://aws.amazon.com/emr/pricing/) for `us-east-1`

## Maintainers
* Dat Tran, github: [datitran](https://github.com/datitran) forked by * Willian A Santos, github: [wasantos] (https://github.com/wasantos)

## Copyright

See [LICENSE](LICENSE) for details.

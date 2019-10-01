# Setup Instruction for provisioning ec2 & attaching volumes
Intended fir provisioning `n` ec2 instances and attaching `n` ebs volumes to them

## Pre-requisites
You need to have terraform installed. And make sure that you've the correct IAM role got attached to the instance from where this script is being executed.

## Clone the repo
```
    cd ~/
    git clone git@github.com:parthasaradhikonda/terraform-provision-ec2.git
```
## Init
```
    cd ~/terraform-provision-ec2/provision/
    terraform init
```
## Plan
```
    terraform plan
```
## Apply (This will actually spinup the hardware, make sure you're all set)
```
    terraform apply
```
## To destroy the hardware provisioned
Note: You need to have your previous .tfstate files in order to destroy the provisioned hardware.
```
    terraform destroy
```
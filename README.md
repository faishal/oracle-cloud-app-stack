# Oracle Cloud App Stack

A terraform module to setup always free oracle instances

## Local setup

### 1. Install dependencies

* [`pre-commit`](https://pre-commit.com/#install)
* [`terraform-docs`](https://github.com/segmentio/terraform-docs) required for `terraform_docs` hooks. `GNU awk` is required if using `terraform-docs` older than 0.8.0 with Terraform 0.12.
* [`TFLint`](https://github.com/terraform-linters/tflint) required for `terraform_tflint` hook.

##### MacOS

```bash
brew install pre-commit gawk terraform-docs tflint
```

##### Ubuntu

```bash
sudo apt install python3-pip gawk &&\
pip3 install pre-commit
curl -L "$(curl -s https://api.github.com/repos/segmentio/terraform-docs/releases/latest | grep -o -E "https://.+?-linux-amd64")" > terraform-docs && chmod +x terraform-docs && sudo mv terraform-docs /usr/bin/
curl -L "$(curl -s https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E "https://.+?_linux_amd64.zip")" > tflint.zip && unzip tflint.zip && rm tflint.zip && sudo mv tflint /usr/bin/
```

### 2. Install the pre-commit hook globally

```bash
DIR=~/.git-template
git config --global init.templateDir ${DIR}
pre-commit init-templatedir -t pre-commit ${DIR}
```

### 3. Run

After pre-commit hook has been installed you can run it manually on all files in the repository

```bash
pre-commit run -a
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| oci | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ad\_region\_mapping | Simple map to provid the details of a single Availability Domain in Oracle Cloud Infrastructure Identity service. | `map` | <pre>{<br>  "ca-toronto-1": 1<br>}</pre> | no |
| fingerprint | Fingerprint for the key pair being used. To get the value, see [Required Keys and OCIDs #How to Get the Key's Fingerprint.](https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm#four) | `any` | n/a | yes |
| images | Simple map to provide base image url for region, Please update to change base image from the [list](https://docs.us-phoenix-1.oraclecloud.com/images/) | `map` | <pre>{<br>  "ca-toronto-1": "ocid1.image.oc1.ca-toronto-1.aaaaaaaaz6yrclqucf3n67btl4ofzky6osiofajz5btxhket46k7faw7rwka"<br>}</pre> | no |
| private\_key | The contents of the private key file, required if private\_key\_path is not defined, takes precedence over `private_key_path` if both are defined. For details on how to create and configure keys see [Required Keys and OCIDs #How to Upload the Public Key.](https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm#three) | `any` | n/a | yes |
| private\_key\_password | (Optional) Passphrase used for the key, if it is encrypted. | `string` | `""` | no |
| region | An Oracle Cloud Infrastructure region. See [Regions and Availability Domains](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/regions.htm) | `any` | n/a | yes |
| ssh\_public\_key | (Optional) public key to allow ssh. | `string` | `"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC92NEAvX/XsRIk013CdTF1878m7zbKys131PBzadlP3Gd+68x3o/lc8yCdJ+c4yf/ydOb+fCCBFwZ71ncjBlx5TCjVNAzVq/LVHIkH9GSRzP7b+1T0m5V3KoVfBDdynrGlVFo3kqM95Cmzs2MPv5ABrPAD9yedDtyiGi5kBHXHxg/TI5g9nc7dZIU37nNQnUtxUTH1c2d+tOxiJihx3zTaVXTQM/iYXrr3+BIw3tJjX6ZRZWjzO9SF4IUOvoGHpnRH+4rd/dvZTH/fZy7bxdQJofvOtPcN4/XyGM2333HeuJ+p4ow6NSL+BLtY6taFS9J3qvInS5r8efmU63m4CkSaQqE53AeLdtygakVVADjAzvKEKlCVHxFHu+gS+fS+fR1IESItBxAxOpc3MRH+Bfrv1bF3AbuCrXzX+noDJpLzYEkGglF4zYZ+gM6pw5+2WepOpFnhKxG4wqrqh0HThG764TqIS6vhinNtCYKKY6bG5vzRb3NYak+J8/luG5h5UbGE0b305m0HHOgmxIzLDvZcb9/bFb57tNqGUjb3xnCeioPeMkEAfQH0DFmKQwSp81JJ4uZc3FtZsU1OpDNU9855+akFd9EaByRHcMPNJWPD8d0i3JkG3ItXQ3yMjtWfazEZzEqXk9b1k670God4c+oKEGrD7vs2w9kE9aLNCpO2RQ== me@faish.al"` | no |
| tenancy\_ocid | OCID of your tenancy. To get the value, see [Required Keys and OCIDs #Tenancy's OCID](https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm#five) | `any` | n/a | yes |
| user\_ocid | OCID of the user calling the API. To get the value, see [Required Keys and OCIDs #User's OCID.](https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm#five) | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| app | n/a |
| lb\_public\_ip | n/a |
| show-ads | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

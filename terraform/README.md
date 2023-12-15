# How to use

If you wish to specify your TF (terraform) version to install and use, you can set the following environment variable. This is optional.
```sh
export TF_VERSION=1.6.6
```

Just run the following command from your aws cloudshell environment:

```sh
wget -O - https://raw.githubusercontent.com/fernandoing/misc-scripts/master/terraform/setup.sh | bash
```

After this, you can change your TF version like so:
```sh
tfenv install 1.5.5
tfenv use 1.5.5
[cloudshell-user@ip-10-140-105-183 ~]$ terraform -v
Terraform v1.5.5
on linux_amd64
```

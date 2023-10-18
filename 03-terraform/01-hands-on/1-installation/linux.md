# How to install terraform in Linux machines using tar file

* Prerequsites to be done before installing terraform

* Install below packages.
  - `sudo yum install unzip`     or  `sudo apt install unzip`
  - `sudo yum install curl wget` or  `sudo apt install curl wget`

* Download terraform zip file from official site https://www.terraform.io/downloads.html

* Select `Linux 64bit version`

* Use `wget or curl` to download the package.
  - Example : `wget https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip`

* Unzip the file once it is downloaded

* Find binary file `terraform` post unzip

* Move binary file under `/usr/local/bin/ or /usr/bin/`

* Provide execute privilege to binary file if incase required `chmod +x /usr/local/bin/terraform`

* Just type `terraform` to check if components are accessible

* To just check the version `terraform --version`

# Install through package manager

* `curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -`

* `sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"`

* `sudo apt-get update && sudo apt-get install terraform`
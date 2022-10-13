# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

### Introduction
For this project, you will write a Packer template and a Terraform template to deploy a customizable, scalable web server in Azure.

### Getting Started
1. Clone this repository

2. Create your infrastructure as code

3. Update this README to reflect how someone would use your code.

### Dependencies
1. Create an [Azure Account](https://portal.azure.com) 
2. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install [Packer](https://www.packer.io/downloads)
4. Install [Terraform](https://www.terraform.io/downloads.html)

### Instructions
1. Replace the value of client_id, client_secret and subscription_id in the server.json for your own parker image. 
2. Open the bash terminal and upload the server.json file in Azure Portal. 
3. Enter the command to create an image: 
   ```
      parker build server.json
   ```

4. After the creation of image, use the main.tf and var.tf to deploy resources with command
   ```
      terraform init
   ```
   ```
      terraform apply solution.plan
   ```
5. You can change the variable vm_count in the var.tf to configure the number of the vitual machines you want to use for deployment. For cost reasons, the maximum is 5.
6. After you finished deploying resourse, run
   ```
      terraform destory
   ```
   so that you can clean up your deployed resources

### Output
Get your customized resourses deployed on Azure!

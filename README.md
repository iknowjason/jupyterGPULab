# Jupyter Notebook GPU Lab

## Overview

## Key Features

## Estimated Cost

## How to Manage Costs 💰

* **Run only when needed.** Use terraform destroy to tear down all resources when you are finished.

* **Stop the Notebook Instance.** You can stop the SageMaker Notebook instance from the AWS Console to avoid charges for it while keeping the model endpoint running.

* **Monitor your billing dashboard.** Use the AWS Cost Explorer to track your spending in near-real-time.

## Requirements and Setup

You will need a Hugging Face account https://huggingface.co/.  Generate a free Hugging Face API / access token.  

**Tested with:**

* Mac OS 13.4 or Ubuntu 22.04
* terraform 1.5.7

**Clone this repository:**


**Credentials Setup:**

Generate an IAM programmatic access key that has permissions to build resources in your AWS account.  Setup your .env to load these environment variables.  You can also use the direnv tool to hook into your shell and populate the .envrc.  Should look something like this in your .env or .envrc:

```
export AWS_ACCESS_KEY_ID="VALUE"
export AWS_SECRET_ACCESS_KEY="VALUE"
```

### Run terraform init
Change into the working directory and type:

```
terraform init
```

### Run terraform plan or apply
```
terraform apply -auto-approve
```
or
```
terraform plan -out=run.plan
terraform apply run.plan
```

### Destroy resources
```
terraform destroy -auto-approve
```

### View terraform created resources
The lab has been created with important terraform outputs showing services, endpoints, IP addresses, and credentials.  To view them:
```
terraform output
```

# Details and Usage


## Monitoring the Deployment

* **Notebook Instance:** The notebook instance runs a startup script. You can view the logs for this script in CloudWatch Logs under the log group /aws/sagemaker/NotebookInstances to ensure the sample repository was cloned correctly.

# License
This project is licensed under the MIT License, which allows for reuse and modification with attribution. See the LICENSE file for details. All included third-party tools and libraries maintain their respective licenses. Enjoy your AI playground responsibly!


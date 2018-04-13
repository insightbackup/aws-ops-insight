# AWS Ops for Insight
Collection of Terraform and Ansible scripts for easy AWS operations

## Logging into the Control Machine
Log into your user on the Controlling Machine provided by Insight, which you should be able to do with a command using the following command: 

    ssh -i <path/to/your/pem.key> <first_name>-<last_initial>@54.69.222.167
    
For example:

    ssh -i ~/.ssh/dd-ansible.pem david-d@54.69.222.167

Alternatively, I added the following to my `.ssh/config`:

    Host dd-contol
        HostName 54.69.222.167
        User david-d
        Port 22
        IdentityFile ~/.ssh/dd-ansible.pem
        
and then log in using the command `ssh dd-control`.

## Clone this repo

This machine is pre-installed with Terraform and Ansible, and is designed to allow you to spin up the necessary infrastructure with minimal setup. However, you still need to download the latest scripts from this repo:

    git clone https://github.com/InsightDataScience/aws-ops-insight.git

## AWS credentials for your personal user
Add your AWS credentials to your `.profile` using your editor of choice. Of course, your credentials will be different, but you should have something like this in your `.profile`:

    export AWS_ACCESS_KEY_ID=ABCDE1F2G3HIJKLMNOP  
    export AWS_SECRET_ACCESS_KEY=1abc2d34e/f5ghJKlmnopqSr678stUV/WXYZa12

**WARNING: DO NOT COMMIT YOUR AWS CREDENTIALS TO GITHUB!** AWS and bots are constantly searching Github for these credentials, and you will either have your account hacked, or your credentials revoked by AWS.

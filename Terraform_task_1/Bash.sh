sathish_kumar@LAPTOP-RNN75O0I:~$ sudo ./aws/install
You can now run: /usr/local/bin/aws --version
sathish_kumar@LAPTOP-RNN75O0I:~$ aws --version
aws-cli/2.34.16 Python/3.14.3 Linux/6.6.87.2-microsoft-standard-WSL2 exe/x86_64.ubuntu.24
sathish_kumar@LAPTOP-RNN75O0I:~$ aws configure
AWS Access Key ID [None]:
sathish_kumar@LAPTOP-RNN75O0I:~$
sathish_kumar@LAPTOP-RNN75O0I:~$
sathish_kumar@LAPTOP-RNN75O0I:~$ pip install awscli
error: externally-managed-environment

× This environment is externally managed
╰─> To install Python packages system-wide, try apt install
    python3-xyz, where xyz is the package you are trying to
    install.

    If you wish to install a non-Debian-packaged Python package,
    create a virtual environment using python3 -m venv path/to/venv.
    Then use path/to/venv/bin/python and path/to/venv/bin/pip. Make
    sure you have python3-full installed.

    If you wish to install a non-Debian packaged Python application,
    it may be easiest to use pipx install xyz, which will manage a
    virtual environment for you. Make sure you have pipx installed.

    See /usr/share/doc/python3.12/README.venv for more information.

note: If you believe this is a mistake, please contact your Python installation or OS distribution provider. You can override this, at the risk of breaking your Python installation or OS, by passing --break-system-packages.
hint: See PEP 668 for the detailed specification.
sathish_kumar@LAPTOP-RNN75O0I:~$
sathish_kumar@LAPTOP-RNN75O0I:~$
sathish_kumar@LAPTOP-RNN75O0I:~$ aws configure
AWS Access Key ID [None]: Gopi@1234
AWS Secret Access Key [None]:
sathish_kumar@LAPTOP-RNN75O0I:~$ aws configure
AWS Access Key ID [None]: *************************
AWS Secret Access Key [None]: *******************************
Default region name [None]: ap-south-1
Default output format [None]: JSON
sathish_kumar@LAPTOP-RNN75O0I:~$
sathish_kumar@LAPTOP-RNN75O0I:~$
sathish_kumar@LAPTOP-RNN75O0I:~$ aws ec2 create-key-pair --region us-east-1 --key-name my-key-primary \
  --query 'KeyMaterial' --output text > my-key-primary.pem
sathish_kumar@LAPTOP-RNN75O0I:~$ chmod 400 my-key-primary.pem
sathish_kumar@LAPTOP-RNN75O0I:~$ aws ec2 create-key-pair --region us-west-2 --key-name my-key-secondary \
  --query 'KeyMaterial' --output text > my-key-secondary.pem
chmod 400 my-key-secondary.pem
sathish_kumar@LAPTOP-RNN75O0I:~$ mkdir terraform-multi-region && cd terraform-multi-region
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$ vi main.tf
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$ cat main.tf
terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# ─────────────────────────────────────────────
# Providers – one per region
# ─────────────────────────────────────────────
provider "aws" {
  alias  = "us_east"
  region = var.region_primary
}

provider "aws" {
  alias  = "us_west"
  region = var.region_secondary
}

# ─────────────────────────────────────────────
# Variables
# ─────────────────────────────────────────────
variable "region_primary" {
  description = "First AWS region"
  type        = string
  default     = "us-east-1"
}

variable "region_secondary" {
  description = "Second AWS region"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name_primary" {
  description = "Key pair name in the primary region (optional)"
  type        = string
  default     = null
}

variable "key_name_secondary" {
  description = "Key pair name in the secondary region (optional)"
  type        = string
  default     = null
}

# ─────────────────────────────────────────────
# Fetch the latest Amazon Linux 2023 AMI
# (AMI IDs differ per region, so we look them up)
# ─────────────────────────────────────────────
data "aws_ami" "amazon_linux_primary" {
  provider    = aws.us_east
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "amazon_linux_secondary" {
  provider    = aws.us_west
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# ─────────────────────────────────────────────
# Security Groups – allow SSH + outbound
# ─────────────────────────────────────────────
resource "aws_security_group" "ssh_primary" {
  provider    = aws.us_east
  name        = "allow-ssh-primary"
  description = "Allow inbound SSH"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Restrict to your IP in production
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = "allow-ssh-primary" }
}

resource "aws_security_group" "ssh_secondary" {
  provider    = aws.us_west
  name        = "allow-ssh-secondary"
  description = "Allow inbound SSH"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Restrict to your IP in production
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = "allow-ssh-secondary" }
}

# ─────────────────────────────────────────────
# EC2 Instances
# ─────────────────────────────────────────────
resource "aws_instance" "primary" {
  provider               = aws.us_east
  ami                    = data.aws_ami.amazon_linux_primary.id
  instance_type          = var.instance_type
  key_name               = var.key_name_primary
  vpc_security_group_ids = [aws_security_group.ssh_primary.id]

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    echo "Hello from ${var.region_primary}" > /tmp/region.txt
  EOF

  tags = {
    Name   = "linux-instance-primary"
    Region = var.region_primary
  }
}

resource "aws_instance" "secondary" {
  provider               = aws.us_west
  ami                    = data.aws_ami.amazon_linux_secondary.id
  instance_type          = var.instance_type
  key_name               = var.key_name_secondary
  vpc_security_group_ids = [aws_security_group.ssh_secondary.id]

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    echo "Hello from ${var.region_secondary}" > /tmp/region.txt
  EOF

  tags = {
    Name   = "linux-instance-secondary"
    Region = var.region_secondary
  }
}

# ─────────────────────────────────────────────
# Outputs
# ─────────────────────────────────────────────
output "primary_instance_id" {
  description = "Instance ID in the primary region"
  value       = aws_instance.primary.id
}

output "primary_public_ip" {
  description = "Public IP of the primary instance"
  value       = aws_instance.primary.public_ip
}

output "primary_ami_used" {
  description = "AMI used in the primary region"
  value       = data.aws_ami.amazon_linux_primary.id
}

output "secondary_instance_id" {
  description = "Instance ID in the secondary region"
  value       = aws_instance.secondary.id
}

output "secondary_public_ip" {
  description = "Public IP of the secondary instance"
  value       = aws_instance.secondary.public_ip
}

output "secondary_ami_used" {
  description = "AMI used in the secondary region"
  value       = data.aws_ami.amazon_linux_secondary.id
}

sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$ ls -ls
total 8
8 -rw-r--r-- 1 sathish_kumar sathish_kumar 6061 Mar 26 09:39 main.tf
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$ ls -la
total 16
drwxr-xr-x 2 sathish_kumar sathish_kumar 4096 Mar 26 09:39 .
drwxr-x--- 9 sathish_kumar sathish_kumar 4096 Mar 26 09:39 ..
-rw-r--r-- 1 sathish_kumar sathish_kumar 6061 Mar 26 09:39 main.tf
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$ terraform init
Initializing the backend...
Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 5.0"...
- Installing hashicorp/aws v5.100.0...
- Installed hashicorp/aws v5.100.0 (signed by HashiCorp)
Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$ terraform plan \
  -var="key_name_primary=my-key-primary" \
  -var="key_name_secondary=my-key-secondary"
data.aws_ami.amazon_linux_secondary: Reading...
data.aws_ami.amazon_linux_primary: Reading...
data.aws_ami.amazon_linux_secondary: Read complete after 3s [id=ami-07e396e4c3b5427f0]
data.aws_ami.amazon_linux_primary: Read complete after 3s [id=ami-08b82e20afc4c4034]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.primary will be created
  + resource "aws_instance" "primary" {
      + ami                                  = "ami-08b82e20afc4c4034"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + enable_primary_ipv6                  = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t3.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = "my-key-primary"
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name"   = "linux-instance-primary"
          + "Region" = "us-east-1"
        }
      + tags_all                             = {
          + "Name"   = "linux-instance-primary"
          + "Region" = "us-east-1"
        }
      + tenancy                              = (known after apply)
      + user_data                            = "8d3bc192bf009f3796736fc42153ef7fc39ab56a"
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # aws_instance.secondary will be created
  + resource "aws_instance" "secondary" {
      + ami                                  = "ami-07e396e4c3b5427f0"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + enable_primary_ipv6                  = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t3.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = "my-key-secondary"
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name"   = "linux-instance-secondary"
          + "Region" = "us-west-2"
        }
      + tags_all                             = {
          + "Name"   = "linux-instance-secondary"
          + "Region" = "us-west-2"
        }
      + tenancy                              = (known after apply)
      + user_data                            = "f9d0e43dd41d680cd74fbe5ec999639e2e518f50"
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # aws_security_group.ssh_primary will be created
  + resource "aws_security_group" "ssh_primary" {
      + arn                    = (known after apply)
      + description            = "Allow inbound SSH"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "allow-ssh-primary"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "allow-ssh-primary"
        }
      + tags_all               = {
          + "Name" = "allow-ssh-primary"
        }
      + vpc_id                 = (known after apply)
    }

  # aws_security_group.ssh_secondary will be created
  + resource "aws_security_group" "ssh_secondary" {
      + arn                    = (known after apply)
      + description            = "Allow inbound SSH"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "allow-ssh-secondary"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "allow-ssh-secondary"
        }
      + tags_all               = {
          + "Name" = "allow-ssh-secondary"
        }
      + vpc_id                 = (known after apply)
    }

Plan: 4 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + primary_ami_used      = "ami-08b82e20afc4c4034"
  + primary_instance_id   = (known after apply)
  + primary_public_ip     = (known after apply)
  + secondary_ami_used    = "ami-07e396e4c3b5427f0"
  + secondary_instance_id = (known after apply)
  + secondary_public_ip   = (known after apply)

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$ terraform apply \
  -var="key_name_primary=my-key-primary" \
  -var="key_name_secondary=my-key-secondary"
data.aws_ami.amazon_linux_secondary: Reading...
data.aws_ami.amazon_linux_primary: Reading...
data.aws_ami.amazon_linux_secondary: Read complete after 2s [id=ami-07e396e4c3b5427f0]
data.aws_ami.amazon_linux_primary: Read complete after 3s [id=ami-08b82e20afc4c4034]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.primary will be created
  + resource "aws_instance" "primary" {
      + ami                                  = "ami-08b82e20afc4c4034"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + enable_primary_ipv6                  = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t3.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = "my-key-primary"
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name"   = "linux-instance-primary"
          + "Region" = "us-east-1"
        }
      + tags_all                             = {
          + "Name"   = "linux-instance-primary"
          + "Region" = "us-east-1"
        }
      + tenancy                              = (known after apply)
      + user_data                            = "8d3bc192bf009f3796736fc42153ef7fc39ab56a"
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # aws_instance.secondary will be created
  + resource "aws_instance" "secondary" {
      + ami                                  = "ami-07e396e4c3b5427f0"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + enable_primary_ipv6                  = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t3.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = "my-key-secondary"
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name"   = "linux-instance-secondary"
          + "Region" = "us-west-2"
        }
      + tags_all                             = {
          + "Name"   = "linux-instance-secondary"
          + "Region" = "us-west-2"
        }
      + tenancy                              = (known after apply)
      + user_data                            = "f9d0e43dd41d680cd74fbe5ec999639e2e518f50"
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # aws_security_group.ssh_primary will be created
  + resource "aws_security_group" "ssh_primary" {
      + arn                    = (known after apply)
      + description            = "Allow inbound SSH"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "allow-ssh-primary"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "allow-ssh-primary"
        }
      + tags_all               = {
          + "Name" = "allow-ssh-primary"
        }
      + vpc_id                 = (known after apply)
    }

  # aws_security_group.ssh_secondary will be created
  + resource "aws_security_group" "ssh_secondary" {
      + arn                    = (known after apply)
      + description            = "Allow inbound SSH"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "allow-ssh-secondary"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "allow-ssh-secondary"
        }
      + tags_all               = {
          + "Name" = "allow-ssh-secondary"
        }
      + vpc_id                 = (known after apply)
    }

Plan: 4 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + primary_ami_used      = "ami-08b82e20afc4c4034"
  + primary_instance_id   = (known after apply)
  + primary_public_ip     = (known after apply)
  + secondary_ami_used    = "ami-07e396e4c3b5427f0"
  + secondary_instance_id = (known after apply)
  + secondary_public_ip   = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_security_group.ssh_secondary: Creating...
aws_security_group.ssh_primary: Creating...
aws_security_group.ssh_secondary: Creation complete after 6s [id=sg-03454a5366112e4ec]
aws_instance.secondary: Creating...
aws_security_group.ssh_primary: Creation complete after 6s [id=sg-067da3a8deebbca90]
aws_instance.primary: Creating...
aws_instance.secondary: Still creating... [00m13s elapsed]
aws_instance.primary: Still creating... [00m14s elapsed]
aws_instance.secondary: Creation complete after 19s [id=i-069c62a3918c1f32d]
aws_instance.primary: Creation complete after 20s [id=i-0067710f417f34be7]

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.

Outputs:

primary_ami_used = "ami-08b82e20afc4c4034"
primary_instance_id = "i-0067710f417f34be7"
primary_public_ip = "44.201.255.18"
secondary_ami_used = "ami-07e396e4c3b5427f0"
secondary_instance_id = "i-069c62a3918c1f32d"
secondary_public_ip = "44.243.8.122"
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$ cp my-key-primary.pem /mnt/c/Users/Sathish\ kumar/Downloads/
cp: cannot stat 'my-key-primary.pem': No such file or directory
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$ find ~ -name "*.pem"
/home/sathish_kumar/windows.pem
/home/sathish_kumar/my-key-primary.pem
/home/sathish_kumar/aws/dist/awscli/botocore/cacert.pem
/home/sathish_kumar/my-key-secondary.pem
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$ cp ~/my-key-primary.pem /mnt/c/Users/Sathish\ kumar/Downloads/
cp ~/my-key-secondary.pem /mnt/c/Users/Sathish\ kumar/Downloads/
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$ ls
main.tf  terraform.tfstate
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$ vi terraform.tfvars
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$ chmod 400 terraform.tfvars
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$ terraform apply
data.aws_ami.amazon_linux_secondary: Reading...
aws_security_group.ssh_secondary: Refreshing state... [id=sg-03454a5366112e4ec]
data.aws_ami.amazon_linux_primary: Reading...
aws_security_group.ssh_primary: Refreshing state... [id=sg-067da3a8deebbca90]
data.aws_ami.amazon_linux_secondary: Read complete after 2s [id=ami-07e396e4c3b5427f0]
aws_instance.secondary: Refreshing state... [id=i-069c62a3918c1f32d]
data.aws_ami.amazon_linux_primary: Read complete after 3s [id=ami-08b82e20afc4c4034]
aws_instance.primary: Refreshing state... [id=i-0067710f417f34be7]

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are needed.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

primary_ami_used = "ami-08b82e20afc4c4034"
primary_instance_id = "i-0067710f417f34be7"
primary_public_ip = "44.201.255.18"
secondary_ami_used = "ami-07e396e4c3b5427f0"
secondary_instance_id = "i-069c62a3918c1f32d"
secondary_public_ip = "44.243.8.122"
sathish_kumar@LAPTOP-RNN75O0I:~/terraform-multi-region$

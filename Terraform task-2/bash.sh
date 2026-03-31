shaik@Shaiks-MacBook-Pro ~ % mkdir nginx-two-regions
shaik@Shaiks-MacBook-Pro ~ % 
shaik@Shaiks-MacBook-Pro ~ % 
shaik@Shaiks-MacBook-Pro ~ % cd nginx-two-regions 
shaik@Shaiks-MacBook-Pro nginx-two-regions % 
shaik@Shaiks-MacBook-Pro nginx-two-regions % 
shaik@Shaiks-MacBook-Pro nginx-two-regions % vi versions.tf
shaik@Shaiks-MacBook-Pro nginx-two-regions % vi main.tf
shaik@Shaiks-MacBook-Pro nginx-two-regions % 
shaik@Shaiks-MacBook-Pro nginx-two-regions % 
shaik@Shaiks-MacBook-Pro nginx-two-regions % vi outputs.tf
shaik@Shaiks-MacBook-Pro nginx-two-regions % 
shaik@Shaiks-MacBook-Pro nginx-two-regions % 
shaik@Shaiks-MacBook-Pro nginx-two-regions % terraform init
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
shaik@Shaiks-MacBook-Pro nginx-two-regions % terraform plan
data.aws_ami.amazon_linux_mumbai: Reading...
data.aws_ami.amazon_linux_mumbai: Read complete after 1s [id=ami-07e29570afffc72c1]
data.aws_ami.amazon_linux_us: Reading...
data.aws_ami.amazon_linux_us: Read complete after 2s [id=ami-05024c2628f651b80]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.nginx_mumbai will be created
  + resource "aws_instance" "nginx_mumbai" {
      + ami                                  = "ami-07e29570afffc72c1"
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
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
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
          + "Name"   = "nginx-server-mumbai"
          + "Region" = "ap-south-1"
        }
      + tags_all                             = {
          + "Name"   = "nginx-server-mumbai"
          + "Region" = "ap-south-1"
        }
      + tenancy                              = (known after apply)
      + user_data                            = "b2370f68b91c0e8d73fd9a1bedff807fe6aeae2d"
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

  # aws_instance.nginx_us_east will be created
  + resource "aws_instance" "nginx_us_east" {
      + ami                                  = "ami-05024c2628f651b80"
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
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
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
          + "Name"   = "nginx-server-us-east"
          + "Region" = "us-east-1"
        }
      + tags_all                             = {
          + "Name"   = "nginx-server-us-east"
          + "Region" = "us-east-1"
        }
      + tenancy                              = (known after apply)
      + user_data                            = "14ef00dcc73d3bfa0ba386617411c1da367335dd"
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

  # aws_security_group.nginx_sg_mumbai will be created
  + resource "aws_security_group" "nginx_sg_mumbai" {
      + arn                    = (known after apply)
      + description            = "Allow HTTP and SSH"
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
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "nginx-sg-mumbai"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "nginx-sg-mumbai"
        }
      + tags_all               = {
          + "Name" = "nginx-sg-mumbai"
        }
      + vpc_id                 = (known after apply)
    }

  # aws_security_group.nginx_sg_us will be created
  + resource "aws_security_group" "nginx_sg_us" {
      + arn                    = (known after apply)
      + description            = "Allow HTTP and SSH"
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
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "nginx-sg-us-east"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "nginx-sg-us-east"
        }
      + tags_all               = {
          + "Name" = "nginx-sg-us-east"
        }
      + vpc_id                 = (known after apply)
    }

Plan: 4 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + mumbai_nginx_url  = (known after apply)
  + mumbai_public_ip  = (known after apply)
  + us_east_nginx_url = (known after apply)
  + us_east_public_ip = (known after apply)

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
shaik@Shaiks-MacBook-Pro nginx-two-regions % terraform apply
data.aws_ami.amazon_linux_mumbai: Reading...
data.aws_ami.amazon_linux_mumbai: Read complete after 1s [id=ami-07e29570afffc72c1]
data.aws_ami.amazon_linux_us: Reading...
data.aws_ami.amazon_linux_us: Read complete after 2s [id=ami-05024c2628f651b80]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.nginx_mumbai will be created
  + resource "aws_instance" "nginx_mumbai" {
      + ami                                  = "ami-07e29570afffc72c1"
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
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
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
          + "Name"   = "nginx-server-mumbai"
          + "Region" = "ap-south-1"
        }
      + tags_all                             = {
          + "Name"   = "nginx-server-mumbai"
          + "Region" = "ap-south-1"
        }
      + tenancy                              = (known after apply)
      + user_data                            = "b2370f68b91c0e8d73fd9a1bedff807fe6aeae2d"
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

  # aws_instance.nginx_us_east will be created
  + resource "aws_instance" "nginx_us_east" {
      + ami                                  = "ami-05024c2628f651b80"
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
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
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
          + "Name"   = "nginx-server-us-east"
          + "Region" = "us-east-1"
        }
      + tags_all                             = {
          + "Name"   = "nginx-server-us-east"
          + "Region" = "us-east-1"
        }
      + tenancy                              = (known after apply)
      + user_data                            = "14ef00dcc73d3bfa0ba386617411c1da367335dd"
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

  # aws_security_group.nginx_sg_mumbai will be created
  + resource "aws_security_group" "nginx_sg_mumbai" {
      + arn                    = (known after apply)
      + description            = "Allow HTTP and SSH"
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
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "nginx-sg-mumbai"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "nginx-sg-mumbai"
        }
      + tags_all               = {
          + "Name" = "nginx-sg-mumbai"
        }
      + vpc_id                 = (known after apply)
    }

  # aws_security_group.nginx_sg_us will be created
  + resource "aws_security_group" "nginx_sg_us" {
      + arn                    = (known after apply)
      + description            = "Allow HTTP and SSH"
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
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "nginx-sg-us-east"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "nginx-sg-us-east"
        }
      + tags_all               = {
          + "Name" = "nginx-sg-us-east"
        }
      + vpc_id                 = (known after apply)
    }

Plan: 4 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + mumbai_nginx_url  = (known after apply)
  + mumbai_public_ip  = (known after apply)
  + us_east_nginx_url = (known after apply)
  + us_east_public_ip = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_security_group.nginx_sg_mumbai: Creating...
aws_security_group.nginx_sg_us: Creating...
aws_security_group.nginx_sg_us: Creation complete after 6s [id=sg-0346fa42c31d0b0c2]
aws_instance.nginx_us_east: Creating...
aws_instance.nginx_us_east: Still creating... [00m10s elapsed]
aws_instance.nginx_us_east: Still creating... [00m20s elapsed]
aws_instance.nginx_us_east: Still creating... [00m30s elapsed]
aws_instance.nginx_us_east: Creation complete after 37s [id=i-061bb7fffe95b5817]
╷
│ Error: creating Security Group (nginx-sg-mumbai): operation error EC2: CreateSecurityGroup, https response error StatusCode: 400, RequestID: afc8e8fb-c207-4da4-87cd-a53fccd8a7ac, api error VPCIdNotSpecified: No default VPC for this user
│ 
│   with aws_security_group.nginx_sg_mumbai,
│   on main.tf line 79, in resource "aws_security_group" "nginx_sg_mumbai":
│   79: resource "aws_security_group" "nginx_sg_mumbai" {
│ 
╵
shaik@Shaiks-MacBook-Pro nginx-two-regions % vi main.tf 
shaik@Shaiks-MacBook-Pro nginx-two-regions % terraform apply
data.aws_ami.amazon_linux_mumbai: Reading...
data.aws_ami.amazon_linux_mumbai: Read complete after 0s [id=ami-07e29570afffc72c1]
data.aws_ami.amazon_linux_us: Reading...
aws_security_group.nginx_sg_us: Refreshing state... [id=sg-0346fa42c31d0b0c2]
data.aws_ami.amazon_linux_us: Read complete after 2s [id=ami-05024c2628f651b80]
aws_instance.nginx_us_east: Refreshing state... [id=i-061bb7fffe95b5817]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.nginx_mumbai will be created
  + resource "aws_instance" "nginx_mumbai" {
      + ami                                  = "ami-07e29570afffc72c1"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = true
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
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
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
          + "Name"   = "nginx-server-mumbai"
          + "Region" = "ap-south-1"
        }
      + tags_all                             = {
          + "Name"   = "nginx-server-mumbai"
          + "Region" = "ap-south-1"
        }
      + tenancy                              = (known after apply)
      + user_data                            = "b2370f68b91c0e8d73fd9a1bedff807fe6aeae2d"
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

  # aws_internet_gateway.mumbai_igw will be created
  + resource "aws_internet_gateway" "mumbai_igw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "mumbai-igw"
        }
      + tags_all = {
          + "Name" = "mumbai-igw"
        }
      + vpc_id   = (known after apply)
    }

  # aws_route_table.mumbai_rt will be created
  + resource "aws_route_table" "mumbai_rt" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                 = "0.0.0.0/0"
              + gateway_id                 = (known after apply)
                # (11 unchanged attributes hidden)
            },
        ]
      + tags             = {
          + "Name" = "mumbai-route-table"
        }
      + tags_all         = {
          + "Name" = "mumbai-route-table"
        }
      + vpc_id           = (known after apply)
    }

  # aws_route_table_association.mumbai_rta will be created
  + resource "aws_route_table_association" "mumbai_rta" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_security_group.nginx_sg_mumbai will be created
  + resource "aws_security_group" "nginx_sg_mumbai" {
      + arn                    = (known after apply)
      + description            = "Allow HTTP and SSH"
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
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "nginx-sg-mumbai"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "nginx-sg-mumbai"
        }
      + tags_all               = {
          + "Name" = "nginx-sg-mumbai"
        }
      + vpc_id                 = (known after apply)
    }

  # aws_subnet.mumbai_subnet will be created
  + resource "aws_subnet" "mumbai_subnet" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "ap-south-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "mumbai-public-subnet"
        }
      + tags_all                                       = {
          + "Name" = "mumbai-public-subnet"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_vpc.mumbai_vpc will be created
  + resource "aws_vpc" "mumbai_vpc" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "mumbai-vpc"
        }
      + tags_all                             = {
          + "Name" = "mumbai-vpc"
        }
    }

Plan: 7 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + mumbai_nginx_url  = (known after apply)
  + mumbai_public_ip  = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_vpc.mumbai_vpc: Creating...
aws_vpc.mumbai_vpc: Still creating... [00m10s elapsed]
aws_vpc.mumbai_vpc: Creation complete after 12s [id=vpc-03f788137928f6b12]
aws_internet_gateway.mumbai_igw: Creating...
aws_subnet.mumbai_subnet: Creating...
aws_security_group.nginx_sg_mumbai: Creating...
aws_internet_gateway.mumbai_igw: Creation complete after 1s [id=igw-0119f2ea378ead704]
aws_route_table.mumbai_rt: Creating...
aws_route_table.mumbai_rt: Creation complete after 1s [id=rtb-060cd4779e93467eb]
aws_security_group.nginx_sg_mumbai: Creation complete after 2s [id=sg-0340dea035a0c413b]
aws_subnet.mumbai_subnet: Still creating... [00m10s elapsed]
aws_subnet.mumbai_subnet: Creation complete after 11s [id=subnet-0dc95040e8de0b2ed]
aws_route_table_association.mumbai_rta: Creating...
aws_instance.nginx_mumbai: Creating...
aws_route_table_association.mumbai_rta: Creation complete after 1s [id=rtbassoc-039d16e816f64ac2b]
aws_instance.nginx_mumbai: Still creating... [00m10s elapsed]
aws_instance.nginx_mumbai: Still creating... [00m20s elapsed]
aws_instance.nginx_mumbai: Still creating... [00m30s elapsed]
aws_instance.nginx_mumbai: Creation complete after 33s [id=i-0c7bdaf1f2e359d18]

Apply complete! Resources: 7 added, 0 changed, 0 destroyed.

Outputs:

mumbai_nginx_url = "http://3.6.41.140"
mumbai_public_ip = "3.6.41.140"
us_east_nginx_url = "http://54.163.197.132"
us_east_public_ip = "54.163.197.132"
shaik@Shaiks-MacBook-Pro nginx-two-regions % 
shaik@Shaiks-MacBook-Pro nginx-two-regions % 

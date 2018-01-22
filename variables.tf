variable "region" {
  description = "The AWS region where virtual machines will be deployed."
}

variable "profile" {
    description = "AWS profile for AWS CLI Credentials to connect to the AWS account."
}

variable "environment" {
  description = "The name of our environment, i.e. development."
}

variable "host_prefix" {
  description = "Hostname prefix (abc)"
  default = "tf"
}

# Subnet Data
variable "cidr" {
  description = "CIDR for the whole VPC"
#  default = "172.20.0.0/16"
  default = "172.20.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR for the Transit Subnet"
  default     = "172.20.1.0/24"
}

variable "zone" {
  description = "Availability zone"
  default     = "a"
}

variable "enable_dns_hostnames" {
  description = "Should be true if you want to use private DNS within the VPC"
  default     = true
}

variable "eip" {
  description = "Provides an Elastic IP resource."
  default     = true
}

variable "public_subnets" {
  description = "The list of public subnets to populate."
  default     = []
}

variable "private_subnets" {
  description = "The list of private subnets to populate."
  default     = []
}

variable "public_propagating_vgws" {
  description = "A list of VGWs the public route table should propagate"
  default     = []
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

variable "public_route_table_tags" {
  description = "Additional tags for the public route tables"
  default     = {}
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  default     = ""
}

variable "azs" {
  description = "A list of Availability zones in the region"
  default     = [ "us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "private_subnet_tags" {
  description = "Additional tags for the public subnets"
  default     = {}
}

variable "private_propagating_vgws" {
  description = "A list of VGWs the private route table should propagate"
  default     = []
}

variable "private_route_table_tags" {
  description = "Additional tags for the private route tables"
  default     = {}
}

variable "availability_zone" {
  description = "VPC network availability zone"
  default     = "a"
}

variable "vpn_user_subnet_cidr" {
  description = "IP of the VPN Server's Elastic Network Interface"
  default = {
    "a" = "172.22.40.0/24"
    "b" = "172.22.140.0/24"
    "c" = "172.22.240.0/24"
  }
}

variable "public_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    type = "map"
    default = {
    "a" = "172.20.0.0/24"
    "b" = "172.20.100.0/24"
    "c" = "172.20.200.0/24"
    }
}

#variable "mgmt_subnet_cidr" {
#    description = "CIDR for the MGMT Subnet"
#    type = "map"
#    default = {
#    "a" = "172.20.10.0/24"
#    "b" = "172.20.110.0/24"
#    "c" = "172.20.210.0/24"
#    }
#}
#variable "secure_subnet_cidr" {
#    description = "CIDR for the App Secure Subnet"
#    type = "map"
#    default = {
#    "a" = "172.20.10.0/24"
#    "b" = "172.20.110.0/24"
#    "c" = "172.20.210.0/24"
#    }
#}

variable "app_subnet_cidr" {
    description = "CIDR for the App Subnet"
    type = "map"
    default = {
      "a" = "172.20.20.0/24"
      "b" = "172.20.120.0/24"
      "c" = "172.20.220.0/24"
    }
}

variable "db_subnet_cidr" {
    description = "CIDR for the DB Subnet"
    default = {
      "a" = "172.20.30.0/24"
      "b" = "172.20.130.0/24"
      "c" = "172.20.230.0/24"
    }
}

variable "dmz_subnet_cidr" {
    description = "CIDR for the DMZ Subnet"
    type = "map"
    default = {
      "a" = "172.20.40.0/24"
      "b" = "172.20.140.0/24"
      "c" = "172.20.240.0/24"
    }
}

variable "shared_subnet_cidr" {
    description = "CIDR for the Shared Services Subnet"
    type = "map"
    default = {
      "a" = "172.20.50.0/24"
      "b" = "172.20.150.0/24"
      "c" = "172.20.250.0/24"
    }
}

variable "vpn_eni_ip" {
  description = "IP of the VPN Server's Elastic Network Interface"
  default = {
    "interface-a" = "172.20.40.100"
    "interface-b" = "172.20.140.100"
    "interface-c" = "172.20.240.100"
  }
}

variable "internal_internet_egress" {
  description = "Allow outbound internet communication for non PCI/HIPPA environments"
  default     = false
}

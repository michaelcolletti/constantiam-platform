variable "region" {
  default = "us-east-1"
}

variable "AmiLinux" {
  type = map(string)
  default = {
    us-east-1 = "ami-03368e982f317ae48" # Virginia
    us-east-2 = "ami-03368e982f317ae48" # Ohio
  }
  description = "I add only 3 regions (Virginia, Oregon, Ireland) to show the map feature but you can add all the regions that you need"
}

variable "aws_access_key" {
  default     = ""
  description = "AWS access key"
}

variable "aws_secret_key" {
  default     = ""
  description = "AWS secret key"
}

variable "credentialsfile" {
  default     = "/Users/michael/.aws/credentials" #replace your home directory
  description = "Where your access and secret_key are stored, you create the file when you run the aws config"
}

variable "vpc-fullcidr" {
  default     = "10.0.0.0/16"
  description = "The Full VPC CDIR"
}

variable "Subnet-Public-AzA-CIDR" {
  default     = "10.0.1.0/24"
  description = "Public Subnet CIDR"
}

variable "Subnet-Private-AzA-CIDR" {
  default     = "10.0.2.0/24"
  description = "Private Subnet CIDR"
}



variable "Subnet-Public-AzB-CIDR" {
  default     = "10.0.3.0/24"
  description = "Public Subnet CIDR"
}

variable "Subnet-Private-AzB-CIDR" {
  default     = "10.0.4.0/24"
  description = "Private Subnet CIDR"
}


variable "Subnet-Public-AzC-CIDR" {
  default     = "10.0.5.0/24"
  description = "Public Subnet CIDR"
}

variable "Subnet-Private-AzC-CIDR" {
  default     = "10.0.6.0/24"
  description = "Private Subnet CIDR"
}

variable "key_name" {
  default     = "tf-infra-provision"
  description = "the ssh key to use in the EC2 machines"
}

variable "DnsZoneName" {
  default     = "stability.internal"
  description = "the internal dns name"
}

# for ASG and LC
variable "aws-launch-template-nodeid" {
  default     = "node"
  description = "Launch config for Node ASG"
}
######
# for asg lc and scaling with notifyt
variable "availability_zones" {
  # No spaces allowed between az names!
  default = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable "asg_min" {
  default = "2"
}
variable "asg_max" {
  default = "10"
}
##
# From other modules
#
#variable "region" {
#  default = "us-east-1"
#}
variable "ip_range" {
  default = "0.0.0.0/0" # Change to your IP Range!
}
#variable "availability_zones" {
#  # No spaces allowed between az names!
#  default = ["us-east-2a","us-east-2b","us-east-2c"]
#}
variable "instance_type" {
  default = "t2.small"
}
variable "asg_desired" {
  default = "2"
}
# Amazon Linux AMI
# Most recent as of 2015-12-02
variable "amis" {
  default = {
    us-east-1 = "ami-60b6c60a"
    us-west-2 = "ami-f0091d91"
  }
}
variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default     = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
  description = "CIDR for the Public Subnet"
  default     = "10.0.0.0/24"
}
variable "private_subnet_cidr" {
  description = "CIDR for the Private Subnet"
  default     = "10.0.1.0/24"
}
variable "webapp_lc_id" {
  description = "ASG Launch Config"
  default     = "webapplc"
}
variable "webapp_elb_name" {
  description = "ELB for ASG"
  default     = "webappelb"
}


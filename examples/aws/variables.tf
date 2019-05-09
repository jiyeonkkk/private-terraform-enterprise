variable "aws_region" {
  description = "AWS region"
}

variable "aws_instance_ami" {
  # ami-759bc50a for Ubuntu, ami-6871a115 for RHEL
  description = "Amazon Machine Image ID"
}

variable "aws_instance_type" {
  description = "EC2 instance type"
}

variable "namespace" {
  description = "Unique name to use for DNS and resource naming"
}

variable "ssh_key_name" {
  description = "AWS key pair name to install on the EC2 instance"
}

variable "vpc_id" {
  description = "ID of VPC"
}

# Please include at least 2 subnets from your VPC.
variable "subnet_ids" {
  description = "Subnet IDs of subnets in VPC"
}

variable "security_group_id" {
  description = "ID of security group to attach to EC2 and PostgreSQL RDS instances"
}

variable "ssl_certificate_arn" {
  description = "ARN of an SSL certificate uploaded to IAM or AWS Certificate Manager for use with PTFE ELB"
}

variable "route53_zone" {
  description = "name of Route53 zone to use"
  default = "hashidemos.io."
}

variable "alb_internal" {
  description = "whether ALB is internal or not"
  default = false
}

variable "owner" {
  description = "EC2 instance owner"
}

variable "ttl" {
  description = "EC2 instance TTL"
  default     = "-1"
}

variable "linux" {
  # Be sure to set aws_instance_ami variable above
  # to and actual Ubuntu or RHEL AMI
  description = "ubuntu or rhel"
  default = "ubuntu"
}

### Variables for user_data script that installs PTFE

variable "ptfe_admin_password" {
  description = "password for PTFE admin console (at port 8800)"
}

variable "hostname" {
  description = "the DNS hostname you will use to access PTFE"
  default = ""
}

variable "ca_certs" {
  description = "custom certificate authority (CA) bundle"
  default = ""
}

variable "installation_type" {
  description = "PTFE deployment mode"
  default = "production"
}

variable "production_type" {
  description = "external or disk"
  default = "external"
}

variable "capacity_concurrency" {
  description = "number of concurrent plans and applies; defaults to 10"
  default = "10"
}

variable "capacity_memory" {
  description = "The maximum amount of memory (in megabytes) that a Terraform plan or apply can use on the system; defaults to 256"
  default = "256"
}

variable "enc_password" {
  description = "Set the encryption password for the install"
}

variable "enable_metrics_collection" {
  description = "whether PTFE's internal metrics collection should be enabled"
  default = "true"
}

variable "extra_no_proxy" {
  description = "a comma separated list of hosts to exclude from proxying"
  default = ""
}

variable "pg_dbname" {
  description = "Name of PostgreSQL database"
  default = "ptfe"
}

variable "pg_extra_params" {
  description = "extra parameters for PostgreSQL"
  default = "sslmode=require"
}

variable "pg_password" {
  description = "Password for PostgreSQL database"
}

variable "pg_user" {
  description = "Name of PostgreSQL database user"
  default = "ptfe"
}

variable "placement" {
  description = "Set to placement_s3 for S3"
  default = "placement_s3"
}

variable "aws_instance_profile" {
  description = "use credentials from the AWS instance profile"
  default = "1"
}

variable "s3_bucket" {
  description = "Name of the S3 bucket"
}

variable "s3_region" {
  description = "region of the S3 bucket"
}

variable "s3_sse" {
  description = "enables server-side encryption of objects in S3."
  default = "aws:kms"
}

variable "s3_sse_kms_key_id" {
  description = "An optional KMS key for use when S3 server-side encryption is enabled"
}

variable "vault_path" {
  description = "Path on the host system to store the vault files"
  default = "/var/lib/tfe-vault"
}

variable "vault_store_snapshot" {
  description = "whether vault files should be stored in snapshots"
  default = "1"
}

variable "tbw_image" {
  description = "whether to use standard or custom Terraform worker image"
  default = "default_image" # or "custom_image"
}
variable "custom_image_tag" {
  description = "alternative Terraform worker image name and tag"
  default = "hashicorp/build-worker:now"
}

variable "source_bucket_name" {
  description = "Name of the S3 source bucket containing PTFE license file, airgap bundle, replicated tar file, and settings files"
}

variable "ptfe_license" {
  description = "key of license file within the source S3 bucket"
}

variable "operational_mode" {
  # Set to "online" or "airgapped"
  description = "whether installation is online or airgapped"
  default = "online"
}

variable "airgap_bundle" {
  description = "S3 bucket object container airgap bundle"
  default = ""
}

variable "replicated_bootstrapper" {
  description = "S3 bucket object containing replicated bootstrapper replicated.tar.gz"
  default = ""
}

variable "docker_package" {
  description = "S3 bucket object containing Docker"
}

variable "docker_cli_package" {
  description = "S3 bucket object containing Docker CLI"
}

variable "containerd_package" {
  description = "S3 bucket object containing containerd"
}

variable "libltdl7_package" {
  description = "S3 bucket object containing libltdl7"
}

variable "container_selinux_package" {
  description = "S3 bucket object containing container-selinux"
}

variable "create_first_user_and_org" {
  # set to "true" for first install and "false" after that
  description = "whether to create the first site admin and org"
}

variable "initial_admin_username" {
  description = "username of initial site admin user in PTFE"
}

variable "initial_admin_email" {
  description = "email of initial site admin user in PTFE"
}

variable "initial_admin_password" {
  description = "username of initial site admin user in PTFE"
}

variable "initial_org_name" {
  description = "name of initial organization in PTFE"
}

variable "initial_org_email" {
  description = "email of initial organization in PTFE"
}

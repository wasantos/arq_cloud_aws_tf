# EMR general configurations
name                = "spark-app-01"
region              = "us-east-1"
subnet_id           = "subnet-078fceb5229a5e1a8"
vpc_id              = "vpc-01c38fc6242e1a2c5"
key_name            = "arq_cloud_aws_tf"
ingress_cidr_blocks = "187.38.0.0/16"
release_label       = "emr-5.16.0"
applications        = ["Hadoop", "Spark", "Hive", "Hue", "JupyterHub"]

# Master node configurations
master_instance_type = "m5.xlarge"
master_ebs_size      = "50"

# Slave nodes configurations
core_instance_type  = "m5.xlarge"
core_instance_count = 1
core_ebs_size       = "50"

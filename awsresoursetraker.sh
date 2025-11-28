#!/bin/bash

#########################
# Author : Veera
# Date : 27/11/25
# Version : V1


#### this script will report aws resourse usage.
########################


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM

######debugmode

set -x ### this enables the debug mode

# List S3 Buckets
echo "Print list of s3 buckets"
 aws s3 ls >>resourseTracker

# Aws Ec2 instances
echo "Print list of ec2 instances"
  aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# Aws list lambdaaws ec2 
echo "Print list of lambda functions"
  aws lambda list-functions

# list IAM users
echo "Print number of IAM users"
aws iam list-users

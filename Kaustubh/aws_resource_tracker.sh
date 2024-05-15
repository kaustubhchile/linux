#!/bin/bash

###################################
### Author: Kaustubh Chile
### Date: 11th-Jan
##
##  Version: v1
##
##  This script will report the AWS resource usage
###################################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# list ec2 instances
echo "Print list of ec2 buckets"
aws ec2 describe-instances

# list lambda
echo "Print list of lambda functions"
aws lambda list-functions

# list iam
echo "Print list of iam users"
# aws iam list-users
aws iam list-users | jq '.Users[].UserName'

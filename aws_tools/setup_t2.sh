#!/bin/bash
#
# Configure a t2.xlarge instance

# get the correct ami
export region=$(aws configure get region)
if [ $region = "us-west-2" ]; then
   export ami="ami-64c5cc1d" # Oregon fastai_ami
else
  echo "Only us-west-2 (Oregon) is currently supported"
  exit 1
fi

# export instanceType="t2.xlarge"
export instanceType="t2.xlarge"

. $(dirname "$0")/setup_instance.sh

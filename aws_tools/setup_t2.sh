#!/bin/bash
#
# Configure a t2.xlarge instance

# get the correct ami
export region=$(aws configure get region)
if [ $region = "us-west-2" ]; then
   export ami="ami-82ece2fb" # Oregon
else
  echo "Only us-west-2 (Oregon) are currently supported"
  exit 1
fi

# export instanceType="t2.xlarge"
export instanceType="t2.xlarge"

. $(dirname "$0")/setup_instance.sh

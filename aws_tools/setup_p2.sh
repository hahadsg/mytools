#!/bin/bash
#

export region=$(aws configure get region)
if [ $region = "us-west-2" ]; then
   export ami="ami-cbd2c7b2" # Oregon my_ami
else
  echo "Only us-west-2 (Oregon) is currently supported"
  exit 1
fi

export instanceType="p2.xlarge"

. $(dirname "$0")/setup_instance.sh

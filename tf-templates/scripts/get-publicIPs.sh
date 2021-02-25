#!/bin/bash


aws ec2 describe-network-interfaces --query NetworkInterfaces[].Association.PublicIp  | jq 'sort_by(.)'

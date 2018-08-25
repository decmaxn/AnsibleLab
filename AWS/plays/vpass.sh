#!/usr/bin/env bash
set -e
aws ssm get-parameter --name ansible-vault-pass --with-decryption --query Parameter.Value --output text --profile $AWS_PROFILE
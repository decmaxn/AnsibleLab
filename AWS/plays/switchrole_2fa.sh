if [ -z $1 ] || [ -z $2 ]; then
  echo "What is the AWS profie name defined in your .aws/config file?"
  read  profile
  echo "What is the arn defined in the same section of above .aws/config file?" 
  read arn
fi

aws --profile ${profile} sts assume-role --role-arn ${arn} --role-session-name "my_aws_session" > /tmp/assume-role-output.txt

export AWS_ACCESS_KEY_ID=`cat /tmp/assume-role-output.txt | jq -c '.Credentials.AccessKeyId' | tr -d '"' | tr -d ' '`
export AWS_SECRET_ACCESS_KEY=`cat /tmp/assume-role-output.txt | jq -c '.Credentials.SecretAccessKey' | tr -d '"' | tr -d ' '`
export AWS_SESSION_TOKEN=`cat /tmp/assume-role-output.txt | jq -c '.Credentials.SessionToken' | tr -d '"' | tr -d ' '`
export AWS_SECURITY_TOKEN=`cat /tmp/assume-role-output.txt | jq -c '.Credentials.SessionToken' | tr -d '"' | tr -d ' '`

rm -f /tmp/assume-role-output.txt
env | grep AWS_

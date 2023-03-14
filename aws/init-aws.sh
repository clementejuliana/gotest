#!/bin/bash

echo "Criando tabela no DynamoDB"

awslocal dynamodb create-table \
    --table-name app \
    --key-schema AttributeName=id,KeyType=HASH AttributeName=version,KeyType=S\
    --attribute-definitions AttributeName=id,AttributeType=S AttributeName=version,AttributeType=S \
    --billing-mode PAY_PER_REQUEST \
    --region us-east-1
      
echo "Tabela criada!"


echo "Criando funções lambdas"

awslocal lambda create-function --function-name app --runtime go1.x --handler main --zip-file fileb:///root/init/teste1.zip --role arn:aws:iam::0000000000:role/LambdaFullAccess

echo "All resources initialized! 🚀"


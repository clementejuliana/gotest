#!/bin/bash

awslocal dynamodb list-tables

echo "Criando funções lambdas dynamo"

awslocal lambda create-function  --function-name app  --runtime go1.x  --handler main --zip-file fileb:///root/init/teste1.zip --role arn:aws:iam::0000000000:role/AmazonDynamoDBFullAccess
   
echo "Criada!!"



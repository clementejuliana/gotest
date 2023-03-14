#!/bin/bash

echo "Invoke"
awslocal lambda invoke --function-name app --outfile response.json --cli-binary-format raw-in-base64-out /dev/null

echo "ok!!"


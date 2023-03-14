package main

import (
	"context"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

func handler(ctx context.Context, request events.APIGatewayProxyRequest) (*events.APIGatewayProxyResponse, error) {
	//codigo daqui

	return &events.APIGatewayProxyResponse{

		StatusCode: 200,

		Body: "Hello, World from aws",
	}, nil

}

func main() {
	lambda.Start(handler)
}

# vgt-broker

This repository contains:
- definitions of the rabbitMQ queues used in the saga process of the VGT (All of them specified in the definitions.json),
- util powershell script to hash passwords in RabbitMQ standard,
- Dockerfile specifying vgt-broker container image

Default user is stored in the repository secrets tab.

## As of now, broker contains following queues:
- saga-replies-queue (main queue for the replies to the orchiestrator),
- saga-order-queue (queue with the requests to the order microservice),
- saga-payment-queue (queue with the requests to the payment gate microservice),
- saga-hotel-queue (queue with the requests to the hotel microservice),
- saga-flight-queue (queue with the requests to the flight microservice).
- backend-to-saga-queue (queue with the requests from the backend to saga)

## and exchanges:
- saga-to-backends (main exchange notifying backends that a saga transaction finished)

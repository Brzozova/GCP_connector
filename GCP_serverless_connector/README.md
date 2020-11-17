# GCP serverless access connector

Connector is resource that enable to connect from a serverless environment like Cloud Run, Cloud Functions or the App Engine standard environment directly to specific VPC network. It handles traffic between serverless environment and VPC network.

You can use the same connector with multiple serverless services.

## Variables

GCP_PROJECT - project name
CONNECTOR_NAME - is a name for connector in casino VPC.
VPC_NETWORK - is the VPC network to attach connector to
REGION - is a region for connector. This must match the region of serverless services. 
IP_RANGE - is an unreserved internal IP network, and a '/28' of unallocated space is required. This IP range must not overlap with any existing IP address reservations in VPC network. 

Example:

```
GCP_PROJECT="my-first-project"
CONNECTOR_NAME="con-eu-01"
VPC_NETWORK="default"
REGION="europe-west3"
IP_RANGE="10.8.0.0/28"
```

## Source:
[GCP documentation](https://cloud.google.com/vpc/docs/configure-serverless-vpc-access)



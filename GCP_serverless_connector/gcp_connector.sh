###################################################################################################
#       Script Name     : gcp_connector.sh
#       Description     : Enable Serverless VPC Access API, create connector and check final status                                                              #       Author          : Brzozova
###################################################################################################

GCP_PROJECT=""
CONNECTOR_NAME=""
VPC_NETWORK=""
REGION=""
IP_RANGE=""

printf "Set project to $GCP_PROJECT"
gcloud config set project $GCP_PROJECT

printf "Update gcloud components"
gcloud components update

printf "Enable Serverless VPC Access API for $GCP_PROJECT"
gcloud services enable vpcaccess.googleapis.com

printf "Create a connector"
gcloud compute networks vpc-access connectors create $CONNECTOR_NAME \
--network $VPC_NETWORK \
--region $REGION \
--range $IP_RANGE

printf "Checking connector state"
gcloud compute networks vpc-access connectors describe $CONNECTOR_NAME --region $REGION


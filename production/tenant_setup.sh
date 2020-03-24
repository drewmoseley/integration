TENANT_ID=$(./run exec mender-tenantadm /usr/bin/tenantadm create-org --name=MyOrganization --username=drew.moseley@northern.tech --password=mysecretpassword | tr -d '\r') 
TENANT_TOKEN=$(./run exec mender-tenantadm /usr/bin/tenantadm get-tenant --id $TENANT_ID | jq -r .tenant_token)
echo TENANT_ID=${TENANT_ID}
echo TENANT_TOKEN=${TENANT_TOKEN}

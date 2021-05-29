#!/bin/bash

API_KEY="*****"
HOST_ID="3VvwdH4vbRE"
CO2_VALUE=$(sudo python3 -m mh_z19 | jq .co2)

JSON="[{\"hostId\":\"${HOST_ID}\",\"name\":\"custom.mh_z19.co2\",\"time\":$(date +%s),\"value\":${CO2_VALUE}}]"
echo $API_KEY
echo $JSON

curl https://mackerel.io/api/v0/tsdb \
	-H "X-Api-Key: ${API_KEY}" \
	-H "Content-Type: application/json" \
	-X POST \
	-d ${JSON}

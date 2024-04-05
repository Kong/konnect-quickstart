#!/bin/bash

deck gateway sync --konnect-token $KONNECT_TOKEN \
./analytics-monitoring/prometheus/kong.yaml \
./authentication/basic-authentication/kong.yaml \
./authentication/key-authentication/kong.yaml \
./logging/file-log/kong.yaml \
./logging/http-log/kong.yaml \
./security/ip-restriction/kong.yaml \
./security/rate-limiting/kong.yaml \
./security/rate-limiting-adv/kong.yaml \
./traffic-control/acl/kong.yaml \
./traffic-control/canary/kong.yaml \
./transformation/correlation-id/kong.yaml \
./transformation/req-transformer/kong.yaml

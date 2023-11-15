#!/bin/bash

deck sync --konnect-token $KONNECT_TOKEN \
-s ./analytics-monitoring/prometheus/kong.yaml \
-s ./authentication/basic-authentication/kong.yaml \
-s ./authentication/key-authentication/kong.yaml \
-s ./logging/file-log/kong.yaml \
-s ./logging/http-log/kong.yaml \
-s ./security/ip-restriction/kong.yaml \
-s ./security/rate-limiting/kong.yaml \
-s ./security/rate-limiting-adv/kong.yaml \
-s ./traffic-control/acl/kong.yaml \
-s ./traffic-control/canary/kong.yaml \
-s ./transformation/correlation-id/kong.yaml \
-s ./transformation/req-transformer/kong.yaml

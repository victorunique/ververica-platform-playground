#!/bin/bash

kubectl --namespace vvp port-forward services/grafana 3000:80

exit 0;

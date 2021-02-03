#!/bin/bash

kubectl --namespace vvp port-forward services/vvp-ververica-platform 8080:80

exit 0;

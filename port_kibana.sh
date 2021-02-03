#!/bin/bash

kubectl --namespace vvp port-forward services/kibana 5601:5601

exit 0;

#!/bin/bash
isActive=$(service httpd status | grep Active | awk '{print $2}')
if [ "$isActive" == "active" ]; then
  service httpd stop
fi

#!/bin/bash

# Default to 'DE' if COUNTRY is not set
COUNTRY=${COUNTRY:-DE}

/warp-plus --bind 0.0.0.0:8086 -4 --rtt 0.3s --scan --cfon --country "$COUNTRY"

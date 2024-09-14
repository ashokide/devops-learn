#!/usr/bin/env bash

# NTP server to get time
NTP_SERVER="time.google.com"

# Check if ntpdate is present
if ! command -v ntpdate &> /dev/null; then
  echo "Error: ntpdate is not installed or not in the system's PATH."
  exit 1
fi

# Get current time from NTP server
ntp_time=$(ntpdate -q -s $NTP_SERVER)

echo "Current time: $ntp_time"

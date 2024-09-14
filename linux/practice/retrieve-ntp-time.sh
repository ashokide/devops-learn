#!/bin/bash

# NTP server to get time
NTP_SERVER="time.google.com"

# Get current time from NTP server
ntp_time=$(ntpdate -q -s $NTP_SERVER)

echo "Current time: $ntp_time"

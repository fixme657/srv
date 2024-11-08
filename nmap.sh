#!/bin/bash

# Define variables
TARGET_IP="$1"
OUTPUT_FILE="scan_result.html"

# Run Nmap scan with vulnerability scripts and save output in XML format
nmap -sV --script=vuln -oX scan_result.xml $TARGET_IP

# Convert XML output to HTML
xsltproc scan_result.xml -o $OUTPUT_FILE

# Print completion message
echo "Scan complete. Results saved in $OUTPUT_FILE"

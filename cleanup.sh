#!/usr/bin/env bash

echo "Removing patches..."
rm -rf *.patch
echo "Removing generated config..."
rm -rf config config-*
echo "Removing source..."
rm -rf src
echo "Removing scripts..."
rm -rf auto-cpu-optimization.sh

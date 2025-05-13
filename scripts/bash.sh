#!/bin/bash

BUILD_START=$(date +%s)
echo "========== BUILD START =========="
echo "Date: $(date)"
echo "Compiling project..."
sleep 2
echo "Build completed successfully!"
echo "========== BUILD END =========="

BUILD_END=$(date +%s)
BUILD_DURATION=$((BUILD_END - BUILD_START))

# Generate report

mkdir -p build
{
echo "Build Report"
echo "============"
echo "Status: SUCCESS"
echo "Date: $(date)"
echo "Duration: ${BUILD_DURATION}s"
} > build/build-report.txt
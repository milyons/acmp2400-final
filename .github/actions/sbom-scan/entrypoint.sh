#!/bin/sh

echo "Generating SBOM..."

syft dir:/github/workspace -o json > sbom.json

echo "Scanning for vulnerabilities..."

grype sbom:sbom.json --fail-on critical

echo "Scan complete"

#!/usr/bin/env bash
echo  -e "<------THE INTEGRITY TOOL------>"

# Usage: ./verify_file.sh <file_path> <known_hash> <hash_type>

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <file_path> <known_hash> <hash_type>"
    echo "Supported hash types: md5, sha1, sha256"
    exit 1
fi

FILE_PATH=$1
KNOWN_HASH=$2
HASH_TYPE=$3

# Determine hashing command based on user input
case "$HASH_TYPE" in
    md5)
        CALCULATED_HASH=$(md5sum "$FILE_PATH" | awk '{ print $1 }')
        ;;
    sha1)
        CALCULATED_HASH=$(sha1sum "$FILE_PATH" | awk '{ print $1 }')
        ;;
    sha256)
        CALCULATED_HASH=$(sha256sum "$FILE_PATH" | awk '{ print $1 }')
        ;;
    *)
        echo "Unsupported hash type. Use md5, sha1, or sha256."
        exit 1
        ;;
esac

# Compare calculated hash with the known hash
if [ "$CALCULATED_HASH" == "$KNOWN_HASH" ]; then
    echo "Integrity check passed: The file is authentic."
    exit 0
else
    echo "Integrity check failed: The file has been modified!"
    exit 1
fi

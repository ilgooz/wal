#!/usr/bin/env bash

set -eo pipefail

BUILD=.build
rm -r -f $BUILD
mkdir -p $BUILD

PROTO=$1

THIRD_PARTY=$2
rm -r -f "$THIRD_PARTY"
mkdir -p "$THIRD_PARTY"

OUT=$3
rm -r -f "$OUT"
mkdir -p "$OUT"

COSMOS_VERSION=$4

# Download the Cosmos Protobuf files from the Cosmos SDK
COSMOS_ZIP="$BUILD/cosmos.zip"
wget -O "$COSMOS_ZIP" "https://github.com/cosmos/cosmos-sdk/archive/v$COSMOS_VERSION.zip"
unzip "$COSMOS_ZIP" -d "$BUILD/" && rm "$COSMOS_ZIP"
COSMOS="$BUILD/cosmos-sdk-$COSMOS_VERSION"

PROTO_COSMOS=$THIRD_PARTY/$PROTO/cosmos
mkdir -p "$PROTO_COSMOS"
cp -R "$COSMOS/proto/cosmos"/* "$PROTO_COSMOS"

mkdir -p "$THIRD_PARTY"
cp -R "$COSMOS/third_party"/* "$THIRD_PARTY"

# Get the missing Protobuf types files
PROTO_PROTOBUF=$THIRD_PARTY/proto/google/protobuf
PROTOBUF_LINK=https://raw.githubusercontent.com/protocolbuffers/protobuf/master/src/google/protobuf
curl "$PROTOBUF_LINK/timestamp.proto" > "$PROTO_PROTOBUF/timestamp.proto"
curl "$PROTOBUF_LINK/duration.proto" > "$PROTO_PROTOBUF/duration.proto"

# Delete unnecessary folders
rm -rf "$COSMOS" "$BUILD"

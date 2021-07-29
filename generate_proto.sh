#!/usr/bin/env bash

set -eo pipefail

flutter create flutter_app

mv -f "proto/"/* "./"


# Define variables
OUT=flutter_app/lib/proto
MARS=mars
PROTO=proto
THIRD_PARTY=third_party
COSMOS_VERSION="0.42.7"

## Download the Protobuf files
source get_proto.sh $PROTO $THIRD_PARTY $OUT $COSMOS_VERSION

# Generate the third party Protobuf implementations
PROTOC="protoc --dart_out=grpc:$OUT -I$THIRD_PARTY/proto"
proto_dirs=$(find "$THIRD_PARTY/proto" -path -prune -o -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq)
for dir in $proto_dirs; do
  $PROTOC -I$THIRD_PARTY/proto $(find "${dir}" -maxdepth 1 -name '*.proto')
done

# Generate the Cosmos Protobuf implementation
#proto_dirs=$(find "$PROTO" -path -prune -o -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq)
#for dir in $proto_dirs; do
#  $PROTOC -I$PROTO \
#  --gocosmos_out=plugins=interfacetype+grpc,\
#Mgoogle/protobuf/any.proto=github.com/cosmos/cosmos-sdk/codec/types:. \
#  $(find "${dir}" -maxdepth 1 -name '*.proto')
#done


mkdir "proto/$MARS"
mv -f "$MARS"/* "proto/$MARS/"

rm -rf "$MARS"

proto_dirs=$(find "$PROTO" -path -prune -o -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq)
for dir in $proto_dirs; do
  $PROTOC -I$PROTO \
  --gocosmos_out=plugins=interfacetype+grpc,\
Mgoogle/protobuf/any.proto=github.com/cosmos/cosmos-sdk/codec/types:. \
  $(find "${dir}" -maxdepth 1 -name '*.proto')
done


# Remove all .pbserver.dart files as they are unnecessary
find "$OUT" -name "*.pbserver.dart" -type f -delete

# Clean directories
rm -r "github.com"

# Generate exports
source generate_exports.sh
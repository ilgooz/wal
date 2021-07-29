///
//  Generated code. Do not modify.
//  source: mars/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'query.pb.dart' as $1;
export 'query.pb.dart';

class QueryClient extends $grpc.Client {
  static final _$post =
      $grpc.ClientMethod<$1.QueryGetPostRequest, $1.QueryGetPostResponse>(
          '/cosmonaut.mars.mars.Query/Post',
          ($1.QueryGetPostRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.QueryGetPostResponse.fromBuffer(value));
  static final _$postAll =
      $grpc.ClientMethod<$1.QueryAllPostRequest, $1.QueryAllPostResponse>(
          '/cosmonaut.mars.mars.Query/PostAll',
          ($1.QueryAllPostRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.QueryAllPostResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.QueryGetPostResponse> post(
      $1.QueryGetPostRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$post, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryAllPostResponse> postAll(
      $1.QueryAllPostRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$postAll, request, options: options);
  }
}

abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmonaut.mars.mars.Query';

  QueryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.QueryGetPostRequest, $1.QueryGetPostResponse>(
            'Post',
            post_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.QueryGetPostRequest.fromBuffer(value),
            ($1.QueryGetPostResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.QueryAllPostRequest, $1.QueryAllPostResponse>(
            'PostAll',
            postAll_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.QueryAllPostRequest.fromBuffer(value),
            ($1.QueryAllPostResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.QueryGetPostResponse> post_Pre($grpc.ServiceCall call,
      $async.Future<$1.QueryGetPostRequest> request) async {
    return post(call, await request);
  }

  $async.Future<$1.QueryAllPostResponse> postAll_Pre($grpc.ServiceCall call,
      $async.Future<$1.QueryAllPostRequest> request) async {
    return postAll(call, await request);
  }

  $async.Future<$1.QueryGetPostResponse> post(
      $grpc.ServiceCall call, $1.QueryGetPostRequest request);
  $async.Future<$1.QueryAllPostResponse> postAll(
      $grpc.ServiceCall call, $1.QueryAllPostRequest request);
}

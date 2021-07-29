///
//  Generated code. Do not modify.
//  source: mars/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'tx.pb.dart' as $0;
export 'tx.pb.dart';

class MsgClient extends $grpc.Client {
  static final _$createPost =
      $grpc.ClientMethod<$0.MsgCreatePost, $0.MsgCreatePostResponse>(
          '/cosmonaut.mars.mars.Msg/CreatePost',
          ($0.MsgCreatePost value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MsgCreatePostResponse.fromBuffer(value));
  static final _$updatePost =
      $grpc.ClientMethod<$0.MsgUpdatePost, $0.MsgUpdatePostResponse>(
          '/cosmonaut.mars.mars.Msg/UpdatePost',
          ($0.MsgUpdatePost value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MsgUpdatePostResponse.fromBuffer(value));
  static final _$deletePost =
      $grpc.ClientMethod<$0.MsgDeletePost, $0.MsgDeletePostResponse>(
          '/cosmonaut.mars.mars.Msg/DeletePost',
          ($0.MsgDeletePost value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MsgDeletePostResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.MsgCreatePostResponse> createPost(
      $0.MsgCreatePost request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPost, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgUpdatePostResponse> updatePost(
      $0.MsgUpdatePost request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePost, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgDeletePostResponse> deletePost(
      $0.MsgDeletePost request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePost, request, options: options);
  }
}

abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmonaut.mars.mars.Msg';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MsgCreatePost, $0.MsgCreatePostResponse>(
        'CreatePost',
        createPost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgCreatePost.fromBuffer(value),
        ($0.MsgCreatePostResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgUpdatePost, $0.MsgUpdatePostResponse>(
        'UpdatePost',
        updatePost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgUpdatePost.fromBuffer(value),
        ($0.MsgUpdatePostResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgDeletePost, $0.MsgDeletePostResponse>(
        'DeletePost',
        deletePost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgDeletePost.fromBuffer(value),
        ($0.MsgDeletePostResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MsgCreatePostResponse> createPost_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MsgCreatePost> request) async {
    return createPost(call, await request);
  }

  $async.Future<$0.MsgUpdatePostResponse> updatePost_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MsgUpdatePost> request) async {
    return updatePost(call, await request);
  }

  $async.Future<$0.MsgDeletePostResponse> deletePost_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MsgDeletePost> request) async {
    return deletePost(call, await request);
  }

  $async.Future<$0.MsgCreatePostResponse> createPost(
      $grpc.ServiceCall call, $0.MsgCreatePost request);
  $async.Future<$0.MsgUpdatePostResponse> updatePost(
      $grpc.ServiceCall call, $0.MsgUpdatePost request);
  $async.Future<$0.MsgDeletePostResponse> deletePost(
      $grpc.ServiceCall call, $0.MsgDeletePost request);
}

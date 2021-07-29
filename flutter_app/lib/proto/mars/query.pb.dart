///
//  Generated code. Do not modify.
//  source: mars/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'post.pb.dart' as $2;
import '../cosmos/base/query/v1beta1/pagination.pb.dart' as $3;

class QueryGetPostRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetPostRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmonaut.mars.mars'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  QueryGetPostRequest._() : super();
  factory QueryGetPostRequest({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory QueryGetPostRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetPostRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetPostRequest clone() => QueryGetPostRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetPostRequest copyWith(void Function(QueryGetPostRequest) updates) => super.copyWith((message) => updates(message as QueryGetPostRequest)) as QueryGetPostRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetPostRequest create() => QueryGetPostRequest._();
  QueryGetPostRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetPostRequest> createRepeated() => $pb.PbList<QueryGetPostRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetPostRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetPostRequest>(create);
  static QueryGetPostRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class QueryGetPostResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetPostResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmonaut.mars.mars'), createEmptyInstance: create)
    ..aOM<$2.Post>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Post', protoName: 'Post', subBuilder: $2.Post.create)
    ..hasRequiredFields = false
  ;

  QueryGetPostResponse._() : super();
  factory QueryGetPostResponse({
    $2.Post? post,
  }) {
    final _result = create();
    if (post != null) {
      _result.post = post;
    }
    return _result;
  }
  factory QueryGetPostResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetPostResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetPostResponse clone() => QueryGetPostResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetPostResponse copyWith(void Function(QueryGetPostResponse) updates) => super.copyWith((message) => updates(message as QueryGetPostResponse)) as QueryGetPostResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetPostResponse create() => QueryGetPostResponse._();
  QueryGetPostResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetPostResponse> createRepeated() => $pb.PbList<QueryGetPostResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetPostResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetPostResponse>(create);
  static QueryGetPostResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Post get post => $_getN(0);
  @$pb.TagNumber(1)
  set post($2.Post v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPost() => $_has(0);
  @$pb.TagNumber(1)
  void clearPost() => clearField(1);
  @$pb.TagNumber(1)
  $2.Post ensurePost() => $_ensure(0);
}

class QueryAllPostRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryAllPostRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmonaut.mars.mars'), createEmptyInstance: create)
    ..aOM<$3.PageRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $3.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryAllPostRequest._() : super();
  factory QueryAllPostRequest({
    $3.PageRequest? pagination,
  }) {
    final _result = create();
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryAllPostRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllPostRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllPostRequest clone() => QueryAllPostRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllPostRequest copyWith(void Function(QueryAllPostRequest) updates) => super.copyWith((message) => updates(message as QueryAllPostRequest)) as QueryAllPostRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryAllPostRequest create() => QueryAllPostRequest._();
  QueryAllPostRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllPostRequest> createRepeated() => $pb.PbList<QueryAllPostRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllPostRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllPostRequest>(create);
  static QueryAllPostRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $3.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($3.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $3.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllPostResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryAllPostResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmonaut.mars.mars'), createEmptyInstance: create)
    ..pc<$2.Post>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Post', $pb.PbFieldType.PM, protoName: 'Post', subBuilder: $2.Post.create)
    ..aOM<$3.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $3.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryAllPostResponse._() : super();
  factory QueryAllPostResponse({
    $core.Iterable<$2.Post>? post,
    $3.PageResponse? pagination,
  }) {
    final _result = create();
    if (post != null) {
      _result.post.addAll(post);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryAllPostResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllPostResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllPostResponse clone() => QueryAllPostResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllPostResponse copyWith(void Function(QueryAllPostResponse) updates) => super.copyWith((message) => updates(message as QueryAllPostResponse)) as QueryAllPostResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryAllPostResponse create() => QueryAllPostResponse._();
  QueryAllPostResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllPostResponse> createRepeated() => $pb.PbList<QueryAllPostResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllPostResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllPostResponse>(create);
  static QueryAllPostResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.Post> get post => $_getList(0);

  @$pb.TagNumber(2)
  $3.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($3.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $3.PageResponse ensurePagination() => $_ensure(1);
}


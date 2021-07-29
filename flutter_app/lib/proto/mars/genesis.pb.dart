///
//  Generated code. Do not modify.
//  source: mars/genesis.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'post.pb.dart' as $2;

class GenesisState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenesisState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmonaut.mars.mars'), createEmptyInstance: create)
    ..pc<$2.Post>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postList', $pb.PbFieldType.PM, protoName: 'postList', subBuilder: $2.Post.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postCount', $pb.PbFieldType.OU6, protoName: 'postCount', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GenesisState._() : super();
  factory GenesisState({
    $core.Iterable<$2.Post>? postList,
    $fixnum.Int64? postCount,
  }) {
    final _result = create();
    if (postList != null) {
      _result.postList.addAll(postList);
    }
    if (postCount != null) {
      _result.postCount = postCount;
    }
    return _result;
  }
  factory GenesisState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenesisState clone() => GenesisState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenesisState copyWith(void Function(GenesisState) updates) => super.copyWith((message) => updates(message as GenesisState)) as GenesisState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenesisState create() => GenesisState._();
  GenesisState createEmptyInstance() => create();
  static $pb.PbList<GenesisState> createRepeated() => $pb.PbList<GenesisState>();
  @$core.pragma('dart2js:noInline')
  static GenesisState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenesisState>(create);
  static GenesisState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.Post> get postList => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get postCount => $_getI64(1);
  @$pb.TagNumber(2)
  set postCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPostCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearPostCount() => clearField(2);
}

